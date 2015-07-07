require 'benchmark'
require 'inline'

class MyTest
  def factorial(n)
    f = 1
    n.downto(2) { |x| f *= x }
    f
  end

  inline :C do |builder|
    builder.c "
      long factorial_c(int max) {
        int i=max, result=1;
        while (i >= 2) { result *= i--; }
        return result;
      }"
  end
end

test = MyTest.new
n = 50_000

Benchmark.bm(7) do |x|
  x.report('pure ruby') { test.factorial(n) }
  x.report('libc') { test.factorial_c(n) }
end

