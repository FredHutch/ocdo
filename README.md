# ocdo

## Quarto check

A GitHub Action (`.github/workflows/quarto-check.yml`) runs on every push to `main` and every pull request opened against `main`. This GH Action runs `quarto render` to make sure quarto can render the site in a "clean environment". This GH Action does not deploy the site.

Maintainence: may require updating action versions as desired or upon errors

## Pull request previews

A GitHub Action (`.github/workflows/deploy-preview.yml`) runs on every pull request opened against `main` to render the site for the code in the PR in [Netlify](https://www.netlify.com/). Netlify is a platform for deploying and hosting websites, and will render previews of pull requests for public GitHub repositories.

If the build succeeds there will be a bot comment with a link to the preview. There's a single link per pull request. On subsequent commits added to the same PR, the link stays the same.

Maintainence: may require updating action versions as desired or upon errors. In addition, the yml file is configureable; changes can be made as desired (e.g., you can change the message that's sent by the bot). The Netlify auth token may need to be updated in the future under repository Settings > Secrets and variables > Actions > Repository secrets.

## Modifying the DaSL Training Site

The DaSL Training site, https://ocdo.fredhutch.org/dasl/, is built with 
[Zola](https://www.getzola.org/), unlike the rest of this site which is built 
with [Quarto](https://quarto.org/). Follow these steps to modify the training
site:

1. Only modify files in the `/dasl-src` directory.
2. Run `make dasl-build`, then `make run` to preview the site locally at http://localhost:5678/dasl/.
3. When working on a feature branch, only commit files that are not in `/dasl`, the modified files that you should commit will be in `/dasl-src`.
4. Before pushing changes to the `main` branch, run `make dasl-build-prod`. Check (via `git status`) for a 1:1 correspondence between modified files in `/dasl-src` and modified HTML files in `/dasl`.  Then make sure you are committing changes to files in `/dasl`. 
