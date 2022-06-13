#!/usr/bin/env bash

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]:-$0}"; )" &> /dev/null && pwd 2> /dev/null; )";
git switch -c add-round-two-conflicts
git am "${SCRIPT_DIR}"/*.patch
git push -u origin add-round-two-conflicts
git switch main
