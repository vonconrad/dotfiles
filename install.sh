#!/bin/bash

echo "source ~/.bashrc" >> ../.bash_profile

ls -1d files/* | while read f; do
  echo "source $(pwd)/$f" >> ../.bashrc
done

source ../.bashrc