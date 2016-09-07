Begin with the object_relations folder. We're going to be building out Yelp with a focus on object-orientation without a database or ActiveRecord.
Write out the domain model. We're going to have customers, restaurants, and reviews.
Open notes.rb, there is a list of Ruby methods we want you to write. Class instances can be stored in an class variable.



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
