# Jekyll, Pandoc, Tufte CSS, Minimal-Mistakes theme

This is a template repository to build a website using all of the above.
It provides a Makefile and GitHub Actions for ease of use. No
guarantees, use at your own risk, etc. (see [LICENSE](LICENSE)).

Uses:

- [Minimal Mistakes theme](https://github.com/mmistakes/minimal-mistakes)
- [Jekyll-Pandoc plugin](https://github.com/mfenner/jekyll-pandoc)
- [Pandoc-Sidenote](https://github.com/jez/pandoc-sidenote)
- [Reveal.js](https://github.com/hakimel/reveal.js)

And my own:

- [Specs](https://gist.github.com/a452c6915b27358b8f6665ae733c682a)
- [Tufte-inspired CSS customizations for Minimal Mistakes](https://github.com/p3palazzo/tufte-mmistakes)
  based on the
  [Tufte-Pandoc Jekyll theme](https://github.com/jez/tufte-pandoc-jekyll)
- [Jekyll-Pandoc-Docker](https://github.com/p3palazzo/jekyll-pandoc-docker)
  — this is at Jekyll 4.2.0 and Pandoc 2.18 with pandoc-crossref at the
  moment.

## Usage ##

Most everything is loaded as either submodules or gem-based plugins for
easier updating.

Because this repository relies on Pandoc and some plugins, it will *not*
work with the standard Github Pages implementation. Feel free to use my
custom Docker image listed above.

1. Edit the [`_config.yml`](_config.yml) <!--_--> file to customize your
   website and suit your needs. This configuration uses the Chicago
   citation style and expects the bibliography to be at
   [`_data/biblio.yaml`](_data/biblio.yaml) but it can all be changed.
2. Edit [`_data/metadata.yaml`](_data/metadata.yaml) <!--_--> and
   [`_data/crossref.yaml`](_data/crossref.yaml) to match your website's
   language and cross-reference handling.
3. Create `index.md` or `index.html`, pages, posts, and collections as
   needed.
4. Test the website by running `make serve` on the command line (known
   to work on MacOS and Linux so far, Windows users let me know if it
   works for you).

### :warning: Caveat ###

- The `gh-pages` branch must exist on your GitHub remote repository
  *before* attempting to build the website.
- You must edit the
  [`.github/workflows/build.yaml`](.github/workflows/build.yaml) file
  to include the name of your repository.

------

 jekyll-pandoc-tufte-mmistakes
 Copyright (C) 2022  Pedro Paulo Palazzo
 
 This program is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.
 
 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.
 
 You should have received a copy of the GNU General Public License
 along with this program.  If not, see <http://www.gnu.org/licenses/>.

