# Please copy/paste all three classes into this file to submit your solution!
class Customer
  attr_accessor :first_name, :last_name, :all

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << full_name
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all.each_with_index do |x, index|
      "#{index}. x"
    end
    #if count is needed :
    # @@all.length

  end

  def self.find_by_name(name)
    self.all.find {|x| x == name}
  end

  def self.find_all_by_first_name(name)
    self.all.find do |x|
      new_array = x.split(" ")
      name == new_array[0]
    end

  end

  def self.all_names
    self.all
  end

  def add_review(restaurant, content)
    new_review = Review.new(restaurant, content)
    new_review.customer = self.full_name
    new_review.restaurant = restaurant
    new_review
  end

end

class Restaurant
  attr_accessor :name, :review, :customer
  @@all = []

  def initialize(name)
    @name = name
    @@all << name
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find {|x| x == name}
  end

  def reviews
    all.map do |x|
      x.review
    end
  end

  def customers
    self.reviews.map do |x|
      x.customer
    end
  end

end

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
