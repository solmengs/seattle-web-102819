class Performance
    attr_reader :musical, :theatre, :date

    @@all = []

    def initialize(date, musical, theatre)
        @date = date 
        @musical = musical 
        @theatre = theatre
        @@all << self
    end

    def self.all 
        @@all 
    end

    def hometown_setting? 
        self.musical.setting_city == self.theatre.city
    end

    def self.perf_on_date(date)
        @@all.select do |p|
            p.date == date
        end
    end

    def has_passed?
        # DateTime.now < self.date 
    end

end