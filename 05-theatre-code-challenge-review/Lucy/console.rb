require_relative 'musical.rb'
require_relative 'theatre.rb'
require_relative 'performance.rb'
require 'pry'
require 'date'

cats = Musical.new("Cats", "NYC")
harlem = Theatre.new("Harlem Theatre", "NYC")
p1 = Performance.new("11/6/19", cats, harlem)
p2 = Performance.new("11/8/19", cats, harlem)
p3 = Performance.new("11/8/19", cats, harlem)
p4 = Performance.new("11/9/19", cats, harlem)
cats.perform_in_theatre("11/5/19", harlem)

binding.pry 
0