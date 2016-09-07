class Review
  ## belongs to restaurant
  ## belongs to customer
  @@all = []
  attr_accessor :post, :customer, :restaurant

  def initialize(post, customer, restaurant)
    @post = post
    @customer = customer
    @restaurant = restaurant
    @@all << self
  end

  def self.all
    @@all
  end


end


##when initializing a review, it should have the review, the restaurant, and the customer who made it
