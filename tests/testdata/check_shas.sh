#!/bin/bash
OS=`uname`
if [[ $OS == Linux ]]; then
  shasum -a 256 -c "$@"/.expected_shasums
elif [[ $OS == darwin ]]; then
  sha -a 256 -c "$@"/.expected_shasums
else
  echo unrecognized operating system.
  exit 1
fi
