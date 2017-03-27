class Review

  attr_accessor :customer, :restaurant


    @@all = []

    def initialize(restaurant, content)
      @restaurant = restaurant
      @content = content
      @@all << self
    end


    def customer
      @customer
    end

    def restuarant
      @restaurant
    end

    def self.all
      @@all
    end #returns all reviews



end
