require 'terminal-table'
require_relative 'lib/ruby_primes'

def display_table(size)
  primes = Primes.generate_primes(size.to_i)
  title = [[" "] + primes, :separator]

  products = primes.map do |i|
    [i] + primes.map do |j|
      i * j
    end
  end

  Terminal::Table.new(title: "Ruby Primes!", rows: title + products)
end

if __FILE__ == $0
  n = ARGV[0] || 10
  
  $stdout.puts(display_table(n.to_i))
end