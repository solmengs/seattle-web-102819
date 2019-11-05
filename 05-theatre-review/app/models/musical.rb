class Musical
  attr_reader :setting_city
  attr_accessor :name

  @@all = [ ]

  def initialize(name, setting_city)
    @name = name
    @setting_city = setting_city
    @@all << self
  end

  def self.all
    @@all
  end

  def perform_in_theater(theater, date)
    # binding.pry
    Performance.new(date, self, theater)
  end

  def performances
    # select, filter, find_all
    Performance.all.select do |performance|
      # binding.pry
      performance.musical == self
    end
  end

  #map and collect are the same!!!

  def theaters
    # binding.pry
    theaters_with_musical = [ ]
    Performance.all.select do |performance|
      if performance.musical == self
        theaters_with_musical << performance.theater
      end
    end
    theaters_with_musical

    ##another way
    # self.performances.map do |performance|
    #   performance.theater
    # end
  end
end
