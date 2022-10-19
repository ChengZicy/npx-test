#!/bin/bash

node_version=$(node -v)
if [[ $node_version ]]
then
  npm config set -- '//npm.pkg.github.com/:_authToken' "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"
  npm config set @enlighten-fund:registry https://npm.pkg.github.com
  npm config set @chengzicy:registry https://npm.pkg.github.com
  npm install @chengzicy/npx-test -g
  npx @chengzicy/npx-test
#  code .
else
  echo "It seems you don't have installed Node.js in your system."
  echo "Please go to https://nodejs.org/en/ and download the LTS version of Node.js."
  echo "After that rerun this script again"
fi

