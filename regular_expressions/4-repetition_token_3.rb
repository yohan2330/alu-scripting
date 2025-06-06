#!/usr/bin/env ruby
# File: 4-repetition_token_3.rb

# Get the first argument passed to the script
input = ARGV[0]

# If no argument is provided, print empty string and exit
if input.nil?
  puts ""
  exit
end

# Use scan to find all occurrences of "hbt{1,}n" and join them
matches = input.scan(/hbt*{1,}n/).join
puts matches
