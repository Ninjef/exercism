module BookKeeping
  VERSION = 2
end

class Robot
  attr_reader :name
  
  @@taken_names = []

  def initialize
    generate_name
  end
  def reset
    generate_name
  end

  private

  def generate_name
    begin
      @name = (0..1).map { (65 + rand(25)).chr }.join << (rand(9)).to_s << (rand(9)).to_s << (rand(9)).to_s
    end until !@@taken_names.include?(@name)
    @@taken_names << @name
  end
end
