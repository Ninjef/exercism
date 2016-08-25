module BookKeeping
  VERSION = 2
end

class Integer
  def to_roman
    num = self
    roman_numerals = ""
    
    thousands = num/1000
    if thousands > 0
      roman_numerals << parser(thousands, "M", "V", "X")
      num -= thousands*1000
    end

    hundreds = num/100
    if hundreds > 0
      roman_numerals << parser(hundreds, "C", "D", "M")
      num -= hundreds*100 # num/10 reduces to whole number, re-multiplying by 10 subtracts only the big chunk
    end

    tens = num/10
    if tens > 0
      roman_numerals << parser(tens, "X", "L", "C")
      num -= (tens)*10 # num/10 reduces to whole number, re-multiplying by 10 subtracts only the big chunk
    end
    roman_numerals << parser(num, "I", "V", "X")
  end
  def parser(num,symbol_1, symbol_2, symbol_3)
    if num <= 3
      return symbol_1 * num
    elsif num >= 4 and num <= 5
      return symbol_1 * (5 - num) + symbol_2
    elsif num >= 6 and num <= 8
      return symbol_2 +  symbol_1 * (num - 5)
    elsif num >= 9
      return symbol_1 * (10 - num) + symbol_3
    end
  end
end
