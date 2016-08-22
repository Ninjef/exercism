module BookKeeping
  Version = 2
end
class Pangram
  def self.is_pangram?(str)
    str_ary = str.scan /\w/
    answer = true unless str.empty?
    alphabet = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
    alphabet.each do |letter|
      if not str_ary.include?(letter)
        answer = false if not str_ary.include?(letter.upcase)
      end
    end
    return answer
  end
end
