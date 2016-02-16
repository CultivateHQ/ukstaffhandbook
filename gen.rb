#!/usr/bin/env ruby

require 'fileutils'

puts "Tell me your title"
title = gets.strip

dir_name = title.downcase.gsub(/\s+/, '-').gsub(/[^a-z0-9-]/, '')

dir = "pages/#{dir_name}"
file = "#{dir}/index.md"


FileUtils.mkdir_p dir

p [title, file, file]

File.open(file, 'w') do |f|
  f.puts "---"
  f.puts "title: #{title}"
  f.puts "---"
  f.puts
end

editor = ENV['EDITOR']

exec("#{editor} #{file}") if editor
