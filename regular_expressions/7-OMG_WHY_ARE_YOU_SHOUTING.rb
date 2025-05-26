#!/usr/bin/env ruby
# File: 7-OMG_WHY_ARE_YOU_SHOUTING.rb

# Get the first argument passed to the script
input = ARGV[0]

# If no argument is provided, print empty string and exit
if input.nil?
  puts ""
  exit
end

# Use scan to find all capital letters and join them
matches = input.scan(/[A-Z]/).join
puts matches
