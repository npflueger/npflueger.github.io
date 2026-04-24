# Local Guide

## Setup on neumann / Manjaro

This repository can be served locally with the system Ruby on `neumann`; `rbenv` was not needed for the initial working setup.

From a shell with `bundle` on `PATH`:

```sh
gem install --user-install bundler
export PATH="$(ruby -r rubygems -e 'print Gem.user_dir')/bin:$PATH"
```

Then install the Ruby packages that Arch/Manjaro splits out from the base `ruby` package:

```sh
sudo pacman -S --needed ruby-erb ruby-webrick ruby-base64 ruby-bigdecimal
```

From the repository root:

```sh
bundle config set --local path vendor/bundle
bundle config set --local disable_shared_gems true
bundle install
bundle exec jekyll serve
```

Notes:

- `bundle config set --local path vendor/bundle` installs gems into this repository instead of trying to write into `/usr/lib/ruby/...`.
- `bundle config set --local disable_shared_gems true` keeps Bundler from mixing in system gem directories.
- `bundle exec jekyll serve` serves the site locally, typically at <http://127.0.0.1:4000>.
- On Linux, use `xdg-open http://127.0.0.1:4000` (or an `open` alias pointing to `xdg-open`) to open the site in a browser.

## Setup on bezout / macOS

These notes summarize the earlier setup recorded in `~/dbac/documents/notes/computer-setup-euclid.md`.

Install Python and Ruby version managers with Homebrew:

```sh
brew install pyenv
pyenv install 3.11.2
pyenv global 3.11.2

brew install rbenv
rbenv install 3.2.1
rbenv install 2.7.7
rbenv global 3.2.1
cd ~/npflueger.github.io
rbenv local 2.7.7
```

Important shell configuration notes from that setup:

- `eval "$(/opt/homebrew/bin/brew shellenv)"` should come before `rbenv` and `pyenv` initialization.
- `rbenv` and `pyenv` should both be initialized from the shell startup files.
- Anaconda was installed, but its shell initialization was pared back so that `pyenv`'s Python would take priority.
- `~/dbac/tools` was added to `PATH`.

Website setup on macOS:

```sh
cd ~/npflueger.github.io
bundle install
```

Then `localweb` worked.

One specific issue recorded there: `localweb` did not work when `rbenv` was set to Ruby `3.2.1`; the noted error was a missing `webrick`, and the conclusion in those notes was that the website needed Ruby `2.7.7` locally.
