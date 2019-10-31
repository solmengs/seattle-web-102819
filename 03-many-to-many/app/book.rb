class Book
  attr_accessor(:title)

  @@all = []

  def initialize(title)
    @title = title
    # @author = author
    ## REVIEW SELF
    # binding.pry
    @@all << self
  end

  def self.all
    @@all
  end

end
