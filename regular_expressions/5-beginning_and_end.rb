#!/usr/bin/env ruby
# File: 5-beginning_and_end.rb

# Get the first argument passed to the script
input = ARGV[0]

# If no argument is provided, print empty string and exit
if input.nil?
  puts ""
  exit
end

# Use scan to find all occurrences of "^h.n$" and join them
matches = input.scan(/^h.n$/).join
puts matches
