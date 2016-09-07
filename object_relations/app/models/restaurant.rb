class Restaurant
  attr_accessor :name
  @@all = {}

  def initialize(name)
    @name = name
    @reviews = []
    @@all << self
  end

  def self.find_by_name(name)

  end

  def customers
    # iterate through and find all the customers that reviewed that restaurant
    @customers
  end

  def reviews
    @reviews
  end

end
