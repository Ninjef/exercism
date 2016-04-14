class Hamming
  VERSION = 1
  def self.compute(strand1, strand2)
    raise ArgumentError if strand1.length != strand2.length
    strand2_arr = strand2.chars
    strand1.chars.delete_if.with_index do | char, index |
      char == strand2_arr[index]
    end.length
  end
end
