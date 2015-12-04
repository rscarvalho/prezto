#!/usr/bin/env zsh

cd ~/.zprezto
git pull upstream master && git submodule update --init --recursive
