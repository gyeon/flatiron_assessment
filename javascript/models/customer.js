// We want a store, which will hold our state.  Think of how we did this in the OO js section (we are not talking about redux store, nor are we putting any requirements on immutability).
// We want to add the following methods to each of the classes
// An all method, where each object is added upon initialization of the object
// A find_by_name method for both the customer and the restaurant
//
// Build the following methods on the following classes.
//
//   # Customer#add_review
//   # Customer#add_restaurant
//   # Customer.all

const store = {
  customers: []
}

class Customers {
  constructor(name, age, hometown) {
    this.name = name
    this.age = age
    this.hometown = hometown
    store.customers.push(this)
  }

  all method
  find_by_name method
}
function allCustomers() {
  store.customers
}

function findByName(name) {
  var customers = store.customers
  return customers.find((customer) => customer.name === name)
}
