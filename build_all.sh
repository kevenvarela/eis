#!/usr/bin/env sh
set -e
cd ejemplo_banco
bundle install
bundle exec rake
cd ..
cd kata_1_chooper
bundle install
bundle exec rake
cd ..
cd kata_2_pptom
bundle install
bundle exec rake
