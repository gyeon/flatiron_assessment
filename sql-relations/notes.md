# Consider how a yelp site is organized
# We need customers, restaurants, owners, and reviews.  How do they link up?

# As a first step
# Please write out the domain model on this file
# What we are concerned about is which tables have foreign keys
# Don't stress: There may be multiple correct answers based on your conception of the problem.

# Eg. for our books and authors your deliverable would look like

# books
id | title | author_id

# author
id | name |

# Hints:
# - The data always lives on the belongs to relationship
# - Do the belongs_to first
# - Then do the has_many
# - If there is a many to many, we need a third table

4 models:
customers, restaurants, owners, reviews

customers has many reviews
customers has many restaurants

restaurants has many reviews THROUGH customers
restaurants has many customers
restaurants belongs to an owner

reviews belongs to a customer
reviews belongs to a restaurant

owner has many restaurants
owner has many customers THROUGH restaurants
owner has many reviews THROUGH customers?


many to many:
restaurants - customers

belongs to:
reviews -> restaurant
reviews -> customer
restaurant -> owner

has many:
customer -> reviews

has many through:
restaurant has many reviews THROUGH customers
owner has many customers THROUGH restaurants
owner has many reviews THROUGH customers
