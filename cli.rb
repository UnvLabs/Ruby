require 'fileutils'
# simple CLI
#
$invoc = ARGV[0]

path = ARGV[1]
source = File.read(path)


if $invoc == "c"
	require_relative 'lexer'
	lexer = Lexer.new(source)
	require "parser"
else if $invoc == "r"
