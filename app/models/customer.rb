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
