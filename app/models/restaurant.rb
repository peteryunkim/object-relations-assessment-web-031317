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
