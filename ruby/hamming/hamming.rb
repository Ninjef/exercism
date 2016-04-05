class Hamming
  VERSION = 1
  def self.compute(strand1, strand2)
    raise ArgumentError if strand1.length != strand2.length
    difference = 0
    for i in 0..strand1.length
      if strand1[i] != strand2[i]
        difference += 1
      end
    end
    return difference
  end
end
