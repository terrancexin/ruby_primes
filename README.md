# Ruby Primes!

###### This program prints out a multiplication table of the first N prime numbers.

## Demo
```
N = 5
+----+----+----+----+----+-----+
|         Ruby Primes!         |
+----+----+----+----+----+-----+
|    | 2  | 3  | 5  | 7  | 11  |
+----+----+----+----+----+-----+
| 2  | 4  | 6  | 10 | 14 | 22  |
| 3  | 6  | 9  | 15 | 21 | 33  |
| 5  | 10 | 15 | 25 | 35 | 55  |
| 7  | 14 | 21 | 35 | 49 | 77  |
| 11 | 22 | 33 | 55 | 77 | 121 |
+----+----+----+----+----+-----+
```

## Run
  1. Install `git clone https://github.com/terrancexin/ruby_primes.git && cd ruby_primes && bundle i`
  2. Display `ruby index.rb 10` (optional integer parameter)
  3. Tests `rspec`

## Sieve of Eratosthenes
- Generating primes based on the divergence of the sum of the reciprocals of the primes: `n(2 + 1/3 + 1/5 + 1/7...1/n)` => 
`O(nlog(log(sqrt(n))))` => `O(nlog(log(n)))` where `log(sqrt(n)) = log(n)/2`.
- `O(nlog(log(n)))`
- Generating the `next` prime number is `O(n)` because of amortized cost. Since we will fidn the next number only `N` times in total.