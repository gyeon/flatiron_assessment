const Store = {
  customers: [],
  restaurants: [],
  reviews: []
}

class Customers {
  constructor(name, age, hometown) {
    this.name = name
    this.age = age
    this.hometown = hometown
    this.reviews = []
    this.restaurants = []
    Store.customers.push(this)
  }

  findByName(name) {
    var customers = Store.customers
    return customers.find((customer) => customer.name === name)
  }


  addReview(review) {
    var newReview = new Review(review, this.restaurants, this.name)
    this.reviews.push(newReview)
    Store.reviews.push(newReview)
  }
}


// I need to really review inheritance and OO javascript again. I had to look at old code to get this. Sorry :(
