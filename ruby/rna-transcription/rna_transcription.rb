require 'pry'
class Complement
  VERSION = 3
  def self.of_dna(dna_strand)
    raise ArgumentError if !dna_strand[/[CGTA]/] || dna_strand[/[BDEFHIJKLMNOPQRSUVWXYZ]/] || !dna_strand[/^[[:alpha:]]+$/]
    complement = dna_strand.chars.map do |char|
      case char
      when "C"
        "G"
      when "G"
        "C"
      when "T"
        "A"
      when "A"
        "U"
      end
    end
    return complement.join("")
  end
end
