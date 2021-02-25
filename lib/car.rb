class Car
  attr_reader :color,
              :make,
              :model,
              :year
  def initialize(info)
    @color = info[:description].split(' ')[0]
    @make = info[:description].split(' ')[1]
    @model = info[:description].split(' ')[2]
    @year = info[year]

  end

end
