class Event

  attr_reader :name
  ## how to let certain people only edit.
  attr_accessor :time, :description

  @@all = [ ]

  def initialize(name, time, description)
    @name = name
    @time = time
    @description = description
    # Brainstorming for an event.
    @@all << self
  end

  def self.all
    @@all
  end

  #number of attendees that attended this specific event
  def num_attendees
    # store a integer that represents the number
    # whenever an attendee is created ->
    # Event.all ( search for the event, incremement number of attendees)
    number_of_attendees = Location.all.select do |location|
      location.event == self
    end.length
  end

end
