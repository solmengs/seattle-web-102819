require_relative '../config/environment'

hamilton = Musical.new("Hamilton", "new york")
st = Musical.new("Sweeny Todd", "london")
noes = Musical.new("Nightmare on elm street", "chicago")
wicked = Musical.new("Wicked", "seattle")

paramount = Theater.new("Paramount", "seattle")
red_rocks = Theater.new("Red Rocks", "denver")
west_side_story = Theater.new("West Side Story", "new york")

p1 = Performance.new("11/04/2019", hamilton, west_side_story)
p2 = Performance.new("11/04/2019", st, red_rocks)
p3 = Performance.new("12/25/2019", wicked, paramount)

binding.pry
0
