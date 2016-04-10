class Gigasecond
  VERSION = 1
  def self.from(datetime)
    gs_bday_i = datetime.to_i + 10**9
    return Time.at(gs_bday_i)
  end
end
