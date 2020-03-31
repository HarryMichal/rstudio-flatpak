# RStudio - flatpak

This is a work-in-progress repo with flatpak manifests that are used to build
RStudio

## Current state

It builds with the latest release (1.2.5033) and possibly with 'master'.

The manifest for the latest releases is in the 'release' branch.

A patch has to be applied to RStudio because during the build freedesktop files
have a hardcoded install path (/usr/share/...). Flatpak changes the prefix to
/app.

## Known problems

- Packages cannot be built for lack of gcc, g++ and overall a package manager
- No git, subversion support

## TODO

- Add gcc extension
- Bundle git/subversion?
- Try to figure out how to fix the problem with the environment
