# RStudio - flatpak

This is a work-in-progress repo with flatpak manifests that are used to build
RStudio.

## Current state

Last successfully built version - [v1.2.5033](https://github.com/rstudio/rstudio/releases/tag/v1.2.5033)

A patch has to be applied to RStudio because during the installation freedesktop
files have a hardcoded install path (/usr/share/...). Flatpak changes the prefix
to /app.

## What works

- installing packages (only tested with 'shiny')
- running an app (webapp with 'shiny')

## Known problems

- No package manager - maybe not a problem if everything needed is already in
the flatpak
- No git, subversion - could be bundled
- Could not install 'odbc' due to lack of 'sql.h'

## TODO

- Publish to [Flathub](https://flathub.org) - I have to check presence of
appdata files; if it is published in WIP state then the user has to be notified
- Bundle all the necessarry dependencies (mainly needed fo building R
dependencies; if an item has to be added/removed, let me know)
  - sqlite
  - git
  - subversion
  - llvm? + clang?
  - openssl
  - python2
  - valgrind
  - postgresql
  - pango
  - libcurl
  - libuser
  - libglib
  - fakeroot
  - bzip2
- the list of dependencies is based on [Dockerfiles](https://github.com/rstudio/rstudio/tree/master/docker/jenkins)
of RStudio.
