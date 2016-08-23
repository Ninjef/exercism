require 'pry'
class Sieve
  def initialize(limit)
    if limit >= 2
      @ary = [*2..limit]
    else
      @ary = []
    end
  end
  def primes
    primes = @ary
    i = 0
    end_of_array = primes.count
    until i > end_of_array
      prime = primes[i]
      primes.each do |num|
        division = num.to_f/prime.to_f
        if division != 1
          if division % 1 == 0.0
            end_of_array -= 1
            primes.delete(num)
          end
        end
      end
      i += 1
    end
    return primes
  end
end
