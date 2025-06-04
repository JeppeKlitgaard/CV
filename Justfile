root := justfile_directory()

export TYPST_ROOT := root

[private]
default:
  @just --list --unsorted

build:
  typst compile \
    --format=pdf \
    --pdf-standard=a-2b \
    --ignore-system-fonts \
    --font-path "vendored/impressive-impression/fonts/FontAwesome6" \
    --font-path "vendored/impressive-impression/fonts/OpenSans" \
    cv.typ cv.pdf
