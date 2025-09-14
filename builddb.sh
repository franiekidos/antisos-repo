#!/usr/bin/env bash
#
#Script Name: builddb.sh
#Description: Script to build goofy ahh repo
#Github: https://github.com/franiekidos/antisos-repo
#Contributors: Antis
set -euo pipefail
#just building the db
cd x86_64
rm -rf *.db
rm -rf *.files
repo-add -s -n -R antisos.db.tar.gz *.pkg.tar.zst
rm antisos.db
rm antisos.db.sig
rm antisos.files
rm antisos.files.sig
mv antisos.db.tar.gz antisos.db
mv antisos.db.tar.gz.sig antisos.db.sig
mv antisos.files.tar.gz antisos.files
mv antisos.files.tar.gz.sig antisos.files.sig
echo "all done."