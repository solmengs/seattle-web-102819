class Musical
    attr_reader :setting_city 
    attr_accessor :name
    @@all = []
    def initialize(name, setting_city)
        @name = name 
        @setting_city = setting_city
        @@all << self
    end

    def self.all 
        @@all 
    end

    def self.all_introductions
        intros = @@all.map do |musical|
            "Welcome, this is #{musical.name}, set in #{musical.city}"
        end
        intros.each do |message|
            puts message
        end
        intros
    end

    def perform_in_theatre(date,theatre)
        Performance.new(date, self, theatre)
    end

    def performances 
        Performance.all.select do |p|
            self == p.musical
        end
    end

    def theatres 
        performances = self.performances
        performances.map do |p|
            p.theatre
        end.uniq
    end

    def cities 
        performances = self.performances
        performances.map do |p|
            p.theatre.city
        end.uniq
    end


end