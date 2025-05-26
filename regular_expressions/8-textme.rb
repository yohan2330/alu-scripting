#!/usr/bin/env ruby
# File: 8-textme.rb

# Get the first argument passed to the script
input = ARGV[0]

# If no argument is provided, print empty string and exit
if input.nil?
  puts ""
  exit
end

# Use regex to extract sender, receiver, and flags
if input =~ /\[from:([^\]]+)\]\s*\[to:([^\]]+)\]\s*\[flags:([^\]]+)\]/
  sender = $1
  receiver = $2
  flags = $3
  puts "#{sender},#{receiver},#{flags}"
else
  puts ""
end
