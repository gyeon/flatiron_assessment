class Customer
  attr_accessor :name
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
## struggling pretty hard with this find by name

  def add_review(review)
    ## first find the customer
    ## then add review by that customer
    @reviews << review
    review.customer = self
  end
end




# An all method, where each object is added upon initialization of the object
# A find_by_name method for both the customer and the restaurant
# Build the following methods on the customer class
  # Customer#add_review
