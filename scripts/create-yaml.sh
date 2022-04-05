#!/usr/bin/env bash

CHART_DIR="$1"
DEST_DIR="$2"

mkdir -p "${DEST_DIR}"

## Add logic here to put the yaml resource content in DEST_DIR
cp -R "${CHART_DIR}"/* "${DEST_DIR}"

find "${DEST_DIR}" -name "*"
