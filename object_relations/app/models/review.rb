class Review
  @@all = {}
  attr_accessor :post, :restaurant, :customer

  def initialize(post, restaurant, customer)
    @post = post
    @restaurant = restaurant
    @customer = customer
    @@all << self
  end

  def customer
    customer.add_review(self)
  end

  def restaurant

  end

end


##when initializing a review, it should have the review, the restaurant, and the customer who made it
