
class Restaurants {
  constructor(name) {
    this.name = name
    this.customers = []
    this.reviews = []
  }
}

function findByName(name) {
  var restaurants = Store.restaurants
  return restaurants.find((restaurant) => restaurant.name === name)
}
