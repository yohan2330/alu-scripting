#!/usr/bin/env ruby
# File: 3-repetition_token_2.rb

# Get the first argument passed to the script
input = ARGV[0]

# If no argument is provided, print empty string and exit
if input.nil?
  puts ""
  exit
end

# Use scan to find all occurrences of "hb+t*n" and join them
matches = input.scan(/hb+tt*n/).join
puts matches
