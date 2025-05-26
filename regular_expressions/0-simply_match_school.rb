#!/usr/bin/env ruby
# File: 0-simply_match_school.rb

# Get the first argument passed to the script
input = ARGV[0]

# Return empty string if no argument provided
puts "" if input.nil?

# Use scan to find all occurrences of "School" and join them
matches = input.scan(/School/).join
puts matches
