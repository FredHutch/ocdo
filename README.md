# ocdo

## Quarto check

A GitHub Action (`.github/workflows/quarto-check.yml`) runs on every push to `main` and every pull request opened against `main`. This GH Action runs `quarto render` to make sure quarto can render the site in a "clean environment". This GH Action does not deploy the site.

Maintainence: may require updating action versions as desired or upon errors

## Pull request previews

A GitHub Action (`.github/workflows/deploy-preview.yml`) runs on every pull request opened against `main` to render the site for the code in the PR in [Netlify](https://www.netlify.com/). Netlify is a platform for deploying and hosting websites, and will render previews of pull requests for public GitHub repositories.

If the build succeeds there will be a bot comment with a link to the preview. There's a single link per pull request. On subsequent commits added to the same PR, the link stays the same.

Maintainence: may require updating action versions as desired or upon errors. In addition, the yml file is configureable; changes can be made as desired (e.g., you can change the message that's sent by the bot). The Netlify auth token may need to be updated in the future under repository Settings > Secrets and variables > Actions > Repository secrets.
