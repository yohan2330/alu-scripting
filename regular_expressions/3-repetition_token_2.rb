#!/usr/bin/env ruby

# Get the first argument passed to the script
input = ARGV[0]

# If no argument is provided, print empty string and exit
if input.nil?
  puts ""
  exit
end

# Use scan to find all occurrences of "ht+n" and join them
matches = input.scan(/ht+n/).join
puts matches
