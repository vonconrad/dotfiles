#!/bin/bash

ls -1d files/* | while read f; do
  echo "source $(pwd)/$f" >> ../.bashrc
done

source ../.bashrc