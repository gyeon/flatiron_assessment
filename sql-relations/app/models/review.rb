class Review
  include Databaseable::InstanceMethods
  extend Databaseable::ClassMethods

  ATTRIBUTES = {
    id: "INTEGER PRIMARY KEY",
    customer_id: "INTEGER",
    restaurant_id: "INTEGER",
  }

  attr_accessor(*self.public_attributes)
  attr_reader :id


  SELECT * FROM owners JOIN restaurants on owners.id = restaurants.owner_id

  def customer
    sql = <<-SQL
    SELECT * FROM customers JOIN reviews on customers.id = customer_id
    SQL
      self.class.db.execute(sql, self.id)
    end
  end

  def restaurant
    sql = <<-SQL
    SELECT * FROM restaurants JOIN reviews on restaurants.id = restaurant_id
    SQL
      self.class.db.execute(sql, self.id)
    end
  end

end
