require 'prime'
module BookKeeping
  VERSION = 2
end
class Raindrops
  def self.convert(number)
    output = ""
    prime_factorization = Prime.prime_division(number).flat_map { |factor, power| [factor] * power }
    output << "Pling" if prime_factorization.include?(3)
    output << "Plang" if prime_factorization.include?(5)
    output << "Plong" if prime_factorization.include?(7)
    output = number.to_s if output.empty?
    return output
  end
end
