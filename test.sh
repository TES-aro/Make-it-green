#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
echo "$SCRIPT_DIR abc"
home=$( dirname -- "$BASH_SOURCE" )
echo "$home xyz"
DIRT=$( cd -- "$(dirname  ${BASH_SOURCE[0]} )" &> /dev/null && pwd )
echo "$DIRT lorem ipsum"
