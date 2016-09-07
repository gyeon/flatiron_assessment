class Review
  ## belongs to restaurant
  ## belongs to customer
  @@all = []
  attr_accessor :post, :customer, :restaurant

  def initialize(post, customer, restaurant)
    @post = post
    @customer = customer
    customer.add_review(self)
    @restaurant = restaurant
    restaurant.add_review(self)
    @@all << self
  end

  def self.all
    @@all
  end

### now instead of finding and adding in the separate classes,
### automatically call the add_review method on the class and add
### to the reviews when a new Review is created.
end


##when initializing a review, it should have the review, the restaurant, and the customer who made it
