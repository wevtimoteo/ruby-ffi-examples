require './myrubycextension'

class MyAwesomeClass
  extend MyRubyCExtension
end

puts "Calling a value from C code: #{MyAwesomeClass.testing}"
