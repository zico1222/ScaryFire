# ScaryFire
A scary theme for LaTeX Beamer class powered by Irasutoya and Fontna.

The theme uses some illustrations provided by [Irasutoya](http://www.irasutoya.com "Irasutoya") for items in itemize environment, and some japanese fonts by [Fontna](www.irasutoya.com "Fontna").

## Sample pages
![sample page 1](https://github.com/zico1222/ScaryFire/wiki/images/sample-0.png)
![sample page 2](https://github.com/zico1222/ScaryFire/wiki/images/sample-1.png)
![sample page 3](https://github.com/zico1222/ScaryFire/wiki/images/sample-2.png)

## Depends
 - pLaTeX/upLaTeX
 - PXchfon package (to specify fonts in the style file)
 - [いろいろな色の火のイラスト](http://www.irasutoya.com/2017/08/blog-post_1.html)

## Installation for UNIX system
Just execute `install.sh` as root user: `sudo install.sh`

The script downloads some images from [Irasutoya](http://www.irasutoya.com/2017/08/blog-post_1.html "いろいろな色の火のイラスト") online.

- fire2-blue.png as `images/fire2-blue.png`
- fire1-red.png as `images/fire1-red.png`
- fire6-purple.png as `images/fire6-purple.png`

## Manual Installation
1. Download and rename the image files above.
2. Put following files in your paths in LaTeX:
   - `images/*`
   - `fonts/*.ttf`
   - `theme/*`

## Usage
Specify beamer theme as `ScaryFire` in your preamble:

```tex
\documentclass[dvipdfmx,14pt]{beamer}
\usetheme{ScaryFire}
```

Or, see `sample/sample.tex` for the details.