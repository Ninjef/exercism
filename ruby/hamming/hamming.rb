class Hamming
  VERSION = 1
  def self.compute(strand1, strand2)
    raise ArgumentError if strand1.length != strand2.length
    difference = 0
    strand1.each_char.with_index do | char, index |
      if strand2[index] != char
        difference += 1
      end
    end
    return difference
  end
end
