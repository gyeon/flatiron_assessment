class Restaurant
  ## has many customers
  ## has many reviews through customers
  attr_accessor :name, :customers, :reviews
  @@all = []

  def initialize(name)
    @name = name
    @reviews = []
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find {|restaurant| restaurant.name == name}
  end

  # def find_review
  #   review = Review.all.select {|review| review.restaurant == self }
  # end

  def find_and_add_review(name)
    restaurant_review = Review.all.find {|review| review.restaurant.name == name}
    @reviews << restaurant_review
  end

  def customers
    # iterate through and find all the customers that reviewed that restaurant
    self.reviews.collect do |review|
      review.customer
    end
  end

end
