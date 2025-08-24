#!/usr/bin/bash
# pkg-manifest.sh -- get package manifests

OUTDIR="$HOME/notes/package-manifests"
date=$(date +%Y-%m-%d)

mkdir -p "$OUTDIR"
mkdir -p "$OUTDIR/pacman/pacman-explicit"
mkdir -p "$OUTDIR/pacman/pacman-orphans"
mkdir -p "$OUTDIR/pacman/pacman-aur"
mkdir -p "$OUTDIR/paru"
mkdir -p "$OUTDIR/manual"


pacman -Qqe > "$OUTDIR/pacman/pacman-explicit/pacman-explicit-$date.txt"
pacman -Qqtd > "$OUTDIR/pacman/pacman-orphans/pacman-orphans-$date.txt"
pacman -Qqm > "$OUTDIR/pacman/pacman-aur/pacman-aur-$date.txt"
paru -Qqe > "$OUTDIR/paru/paru-explicit-$date.txt"
ls ~/src/* > "$OUTDIR/manual/src-repos-$date.txt"

find "$OUTDIR/pacman/pacman-explicit" -type f -mtime +180 -exec rm -f {} \;
find "$OUTDIR/pacman/pacman-orphans"  -type f -mtime +180 -exec rm -f {} \;
find "$OUTDIR/pacman/pacman-aur"      -type f -mtime +180 -exec rm -f {} \;
find "$OUTDIR/paru"                   -type f -mtime +180 -exec rm -f {} \;
find "$OUTDIR/manual"                 -type f -mtime +180 -exec rm -f {} \;
