class Attendee

  attr_reader :name, :age
  ## how to let certain people only edit.
  attr_accessor :fav_movie

  @@all = [ ]

  def initialize(name, age, fav_movie)
    @name = name
    @age = age
    @fav_movie = fav_movie

    @@all << self
  end

  def self.all
    @@all
  end


end
