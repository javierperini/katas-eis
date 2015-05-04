#!/usr/bin/env sh
set -e
bundle install
cd char_counter2
bundle exec rake
cd ../tenis
bundle exec rake
cd ../battleship
bundle exec rake

