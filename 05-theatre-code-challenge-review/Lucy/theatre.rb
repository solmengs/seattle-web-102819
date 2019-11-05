class Theatre
    attr_reader :title, :city

    @@all = []

    def initialize(title, city)
        @title = title
        @city = city 
        @@all << self
    end

    def self.all
        @@all
    end

    def performances
        Performance.all.select do |p|
            self == p.theatre
        end
    end

    def musicals
        performances = self.performances
        performances.map do |p|
            p.musical
        end.uniq
    end

    def perf_on_date(date)
        self.performances.select do |p|
            p.date == date
        end
    end



end