require 'pry'
require_relative 'attendee'
require_relative 'location'
require_relative 'event'


s_bday = Event.new("Soundarya Birthday", "May", "My bday")
y_bday = Event.new("Yova Birthday", "November", "bday event woot!")

soundarya = Attendee.new("Soundarya", 30, "Ajushi")
robin = Attendee.new("Robin", 30, "Pulp Fiction")
taylor = Attendee.new("Taylor", 30, "Pan's Labyrinth")

 Location.new("seattle", s_bday, 60, soundarya)
 Location.new("seattle", s_bday, 60, robin)
 Location.new("seattle", s_bday, 60, taylor)
 Location.new("lynnwood", y_bday, 60, soundarya)
 Location.new("lynnwood", y_bday, 60, robin)
 Location.new("lynnwood", y_bday, 60, taylor)

# portland =
binding.pry
0
