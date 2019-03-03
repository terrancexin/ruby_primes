class Primes
  def self.generate_primes(n)
    primes = []
    primes << 2 if n >= 1

    i = 3
    until primes.length >= n
      primes << i if self.is_prime?(i)
      i += 2
    end

    primes
  end

  def self.is_prime?(n)
    return false if !n.is_a? Integer || n < 2

    for i in 2..Math.sqrt(n)
      return false if (n % i == 0)
    end
    
    true
  end
end
