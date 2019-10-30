class Book
  attr_accessor(:title, :author)

  @@all = [ ]

  def initialize(title, author)
    @title = title
    @author = author
    ## REVIEW SELF
    # binding.pry
    @@all << self
  end

  def self.all
    binding.pry
    @@all
  end

end
