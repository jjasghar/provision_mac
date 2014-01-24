#!/bin/bash


chef_binary=/usr/bin/chef-solo

if ! test -f "$chef_binary"; then
  echo ""
  echo ""
  echo "You need to install chef dumb-dumb"
  echo ""
  echo ""
  exit 1
fi

"$chef_binary" -c solo.rb -j solo.json
