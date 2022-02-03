require 'fileutils'
# simple CLI
#
$invoc = ARGV[0]

$filename = ARGV[1]

file = File.open("#$filename")

file_data = file.read

# "user1\nuser2\nuser3\n"

if $invoc == "c"
		require "parser.rb"
end
