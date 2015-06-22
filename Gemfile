# A sample Gemfile
# "ruby 2.1.0"
source "https://rubygems.org"

gem 'jekyll'
gem 'puma'
gem 'rack-contrib'
gem 'rack-ssl'

group :development do
  gem 'bourbon'
  gem 'neat'
end


require 'json'
require 'open-uri'
versions = JSON.parse(open('https://pages.github.com/versions.json').read)

gem 'github-pages', versions['github-pages']
