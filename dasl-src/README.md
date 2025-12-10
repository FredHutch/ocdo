# The Fred Hutch Data Science Lab

## Getting Started

1. Install Zola: https://www.getzola.org/documentation/getting-started/installation/.
   If you are using macOS please use `brew`.

2. Clone this repo, `cd` into it, and run `zola serve`.

3. Navigate to <http://localhost:1111/> to see the site.

## Making changes

Assuming you've already run `zola serve`, all changes should be immediately reflected on the site after saving the changes you've made. If you don't see the changes, kill the server and restart it.

## Repository Structure

There are three major directories to know about when editing content for this site:

```
├── content
│   ├── *.md (markdown content)
├── data
│   └── sidebar.toml
├── static
│   ├── images (place any images here)
├── templates
│   ├── *.html (these files contain html, css, javascript, and tera (similar to jinja) templates)
```

## Content

- This concerns all files in `content/`
- The front matter of each content file uses TOML (<https://toml.io/en/>)
- Any fields ending in `_md` are rendered as markdown
- The homepage for the entire site lives in a special content file named `_index.md`
- Landing pages for directories within `content` are defined in a `_index.md` file

Specific content pages:

- Training
  - Classes and Workshops: `content/classes-workshop.md`
  - Class Schedule: `content/class-schedule.md`
  - Teach Yourself: `content/teach-yourself.md`
- Individual course pages are in: `content/courses/`
- Learning Communities: `content/learning-communities.md`
- Connect With Us: `content/connect.md`
- About Us: `content/about/_index.md`

## Sidebar

Commonly used elements in the sidebar are in the `data/sidebar.toml` file.

## Images

Put images in `static/images/`, the path to the file in your content file, and reference the image in the associated template file.

## Navbar

The navbar details are defined in `config.toml`. There you can change the name of navbar items (called `title`). Changing the `url` should be avoided unless you also change the file name of the associated template file.

## Formatting

This repo has some formatting tools that are specific to the [Zed editor](https://zed.dev/) for formatting html and Jinja templating together. The major goal with this is to have consistent formatting for html/jinja content across different people editing the files.

This only concerns you if you are editing `*.html` files.

In addition, you do not need to worry about this if you have pure HTML in the `*.html` files you're editing.

To use the tools run `./install-formatting.sh`, which will install [uv](https://docs.astral.sh/uv/) to install a python package [djlint](https://pypi.org/project/djlint/). If those tools are already installed, they won't be reinstalled. If the installation succeeds, upon saving `*.html` files you will see better formatting for files that contain both html and jinja.
