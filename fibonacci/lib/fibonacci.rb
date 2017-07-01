module Fibonacci
  def self.recursive_fib(n)
    return 0 if n == 0
    return 1 if n == 1
    answer = Fibonacci.recursive_fib(n-1) + Fibonacci.recursive_fib(n-2)
  end

  def self.iterative_fib(n)
    fib_table = {
      0 => 0,
      1 => 1
    }

    (n+1).times do |key|
      if key > 1
        value = fib_table[key - 1].to_i + fib_table[key - 2].to_i
        fib_table[key] = value
      end
    end

    return fib_table[n]
  end
end

# puts Fibonacci.recursive_fib(35)
# puts Fibonacci.iterative_fib(35)

require 'benchmark'
num = 40
Benchmark.bm do |x|
  x.report("recursive_fib") { Fibonacci.recursive_fib(num) }
  x.report("iterative_fib") { Fibonacci.iterative_fib(num) }
end

# WITH NUM = 35
# user     system      total        real
# recursive_fib  1.530000   0.000000   1.530000 (  1.539572)
# iterative_fib  0.000000   0.000000   0.000000 (  0.000025)

# WITH NUM = 40
# user     system      total        real
# recursive_fib 17.050000   0.010000  17.060000 ( 17.092612)
# iterative_fib  0.000000   0.000000   0.000000 (  0.000029)
