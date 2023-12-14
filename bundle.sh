#!/bin/bash
export BUNDLE_GEMFILE=/Users/andrey.eremin/.my-env/Gemfile

asdf global ruby 3.2.2
gem install bundler
bundle install
bundle $@