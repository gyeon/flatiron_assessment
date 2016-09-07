gina = Customer.new("Gina")
sharon = Customer.new("Sharon")
sean = Customer.new("Sean")
jenny = Customer.new("Jenny")

thai = Restaurant.new("Thai Ave")
korean = Restaurant.new("Jongro")
viet = Restaurant.new("Siagon Bowl")
japanese = Restaurant.new("Yasuda")
chinese = Restaurant.new("Hoongs Palace")

Review.new("good", gina, thai)
Review.new("soso", sharon, korean)
Review.new("awesome", sean, viet)
Review.new("ok", jenny, japanese)
##how would i add a review?
## first find whoever is making the review, and call
## the add_review method on them.

## gina.add_review("great", thai)
## right??
