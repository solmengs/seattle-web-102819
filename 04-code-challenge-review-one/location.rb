class Location

  # attr_reader :name, :age
  ## how to let certain people only edit.
  attr_accessor :event, :attendee, :length

  @@all = [ ]

  def initialize(city, event, length, attendee)
    @city = city
    @event = event
    @length = length
    @attendee = attendee
    @@all << self
  end

  def self.all
    @@all
  end

end
