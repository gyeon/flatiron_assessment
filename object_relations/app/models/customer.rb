class Customer
  #has many reviews
  #has many restaurants

  attr_accessor :name, :reviews, :restaurant

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
    ## go through all customers and find the one that matches name
    self.all.find {|person| person.name == name}
  end

  def add_review(review)
    @reviews << review
    review.customer = self
  end

  def restaurants
    self.reviews.collect do |review|
      review.restaurant
    end
  end

end




# customer = customer.add_review('it was good', Restaurant.new)
# a new review tied ot the restaurant
# and tied to the customer
