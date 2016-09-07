Yelp

3 models:

- customers
- restaurants
- reviews

customers have many reviews
customers have many restaurants

restaurants have many customers
restaurants have many reviews

reviews belong to a customer
reviews belong to a restaurant

many to many:
restaurants - customers

belongs to:
reviews -> restaurant
reviews -> customer

has many:
customer -> reviews

has many through:
restaurant has many reviews THROUGH customers
