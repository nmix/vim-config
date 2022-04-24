#!/usr/bin/env bash

git ls-files --stage | grep ^160000 | awk '{print substr($4, 13)}'
