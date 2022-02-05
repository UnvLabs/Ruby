def lex(file_name)
  @file_name=file_name
  file = File.open("#@file_name")
  line = file.read.split("\n")
  line.each { |amas|
    amas.gsub!("\n",";")
  }
end
