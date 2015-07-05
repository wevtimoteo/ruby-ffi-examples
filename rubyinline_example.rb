require 'inline'

module SimpleExtension
  inline do |builder|
    builder.c %(int testing() {
                     int x = 42;
                     return x;
                   })
  end
end

class MyAwesomeExample
  extend SimpleExtension
end

puts MyAwesomeExample.testing
