#!/bin/zsh

echo "source ~/.zshrc" >> ../.zprofile

ls -1d files/* | while read f; do
  echo "source $(pwd)/$f" >> ../.zshrc
done

source ../.zshrc