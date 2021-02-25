class Car
  attr_reader :color,
              :make,
              :model,
              :year,
              :age
  def initialize(info)
    @color  = info[:description].split(' ')[0]
    @make   = info[:description].split(' ')[1]
    @model  = info[:description].split(' ')[2]
    @year   = info[:year]
    @age    = 0
  end

  def age
    @age = Time.now.year - @year.to_i
  end
end
