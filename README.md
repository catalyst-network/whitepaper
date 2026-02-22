<div align="center">
  <img alt="ReDoc logo" src="https://raw.githubusercontent.com/catalyst-network/Community/master/media-pack/logo.png" width="400px" />

  ### Catalyst Whitepaper
  
[![Discord](https://img.shields.io/discord/629667101774446593?color=blueviolet&label=discord)](https://discord.gg/anTP7xm)
[![Twitter Follow](https://img.shields.io/twitter/follow/catalystnetorg?style=social)](https://twitter.com/catalystnetorg)
[![Subreddit subscribers](https://img.shields.io/reddit/subreddit-subscribers/catalystnet?style=social)](https://reddit.com/r/catalystnet)
</div>

This is the Technical White Paper for the Catalyst Network. Discussed within are some of the key concepts that are implemented on the network.

## Set up

Setting up and using LaTeX can be found here:

https://github.com/catalyst-network/whitepaper/wiki/Using-and-Compiling-LaTeX

## Building (local)

This repository is a LaTeX project. The recommended entrypoint is:

- `catalyst-technical-whitepaper-new.tex`

### Prerequisites (Ubuntu/Debian)

Install a TeX distribution and `latexmk`:

```bash
sudo apt update
sudo apt install -y latexmk texlive-latex-base texlive-latex-extra texlive-fonts-recommended texlive-pictures texlive-bibtex-extra
```

### Build

```bash
make pdf
```

Outputs are written to `build/` (see `Makefile`).

### Build (Docker)

If you prefer not to install TeX locally:

```bash
docker build -t catalyst-whitepaper .
docker run --rm -v "$PWD:/work" catalyst-whitepaper
```

### Alternative entrypoints

- `catalyst-technical-whitepaper.tex` exists, but may not build in some revisions depending on which consensus subsection file is present.


## File Format

Each section and subsection is split into separate `.tex` files for ease of editing. It follows the following rules:

* The Introduction, Conclusion and Abstract are found in `tex-files/intro`, `tex-files/conclusion` and `tex-files/abstract` respectively.
* Each section has a dedicated folder
* Within the section folders each subsection has a dedicated `.tex` file.

## Proof of Authority Test-Net Paper

The paper that covers the PoA Test net and the minor changes involved with that can be found [here](https://github.com/catalyst-network/whitepaper/tree/PoA-paper-version). 

Differences are primarily in the consensus algorithm with regards to producer selection.  
