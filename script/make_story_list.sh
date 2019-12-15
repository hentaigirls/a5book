#!/bin/bash -ue
WORKING_DIR="./work"
STORY_LIST="${WORKING_DIR}/input.tex"
STORY_ENTRY_POINT="main.tex"

EXAMPLE_AUTHOR_DIR="./work/example-author"
EXAMPLE_OPENING_DIR="./work/example-opening"

rm -f "${STORY_LIST}"
mkdir -p "${WORKING_DIR}"
find . \( -path "${EXAMPLE_OPENING_DIR}" -o -path "${EXAMPLE_AUTHOR_DIR}" \) -prune -o -name "${STORY_ENTRY_POINT}" -print0 | xargs -0 -IXXX echo '\input{'XXX'}' >> ${STORY_LIST}
