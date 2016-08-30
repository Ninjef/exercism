class Prime
  def self.nth(prime_index)
    current_prime_index = 1
    num = 1
    primes = [2] # 2 is the special prime; the only even one

    while current_prime_index < prime_index do
      num += 2 # next odd number
      is_prime = true # number is assumed to be prime
      primes.take_while{ |prime| prime <= num.to_f ** 0.5 }.each do |prime| # Gather all primes smaller than the square root of the current number
        is_prime = false if (num.to_f / prime.to_f) % 1 == 0 # If number divisible by current prime, it is not prime
      end
      if is_prime
        primes << num
        current_prime_index = primes.length
      end
    end
    if prime_index > 0
      return primes[prime_index - 1]
    else
      raise ArgumentError
    end
  end
end
