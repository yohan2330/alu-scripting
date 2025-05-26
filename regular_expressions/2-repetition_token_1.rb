#!/usr/bin/env ruby
# File: 2-repetition_token_1.rb

# Get the first argument passed to the script
input = ARGV[0]

# If no argument is provided, print empty string and exit
if input.nil?
  puts ""
  exit
end

# Use scan to find all occurrences of "h(b*)tn" and join them
matches = input.scan(/h(b*)tn/).join
puts matches
