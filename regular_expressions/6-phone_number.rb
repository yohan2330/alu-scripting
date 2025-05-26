#!/usr/bin/env ruby
# File: 6-phone_number.rb

# Get the first argument passed to the script
input = ARGV[0]

# If no argument is provided, print empty string and exit
if input.nil?
  puts ""
  exit
end

# Use scan to find all occurrences of "^\d{10}$" and join them
matches = input.scan(/^\d{10}$/).join
puts matches
