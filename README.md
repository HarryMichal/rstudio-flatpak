# RStudio - flatpak
This is a work-in-progress repo with flatpak manifests that are used to build RStudio

## Current state
It builds with the "current" master (currently I use my own fork with patches on top of latest master) but it's not tested with current releases.

## TODO
- cleanup - I didn't bother with cleaning up the build process, so there's a lot of bloat
- yaml version - some people don't like json
- tracking of releases - this version is tracking master, not releases
  - this'll require some major changes, because the RStudio releases are behind master by hundreds of commits
