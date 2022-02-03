require 'parslet' 
class UNV < Parslet::Parser
    rule(:integer) { match('[0-9]').repeat(1) } # recognize int's
    rule(:space)      { match('\s').repeat(1) }
    rule(:space?)     { space.maybe }\
    root(:integer,:space)
end
def parse(input)
  model = UNV.new

  model.parse(input)

end
rescue Parslet::ParseFailed => failure
  puts failure.parse_failure_cause.ascii_tree
end
parse(file_data)
