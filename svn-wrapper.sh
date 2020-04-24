#!/bin/sh

exec flatpak-spawn --host --forward-fd=1 --forward-fd=2 --forward-fd=3 svn "$@"
