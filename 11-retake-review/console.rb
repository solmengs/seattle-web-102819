require 'pry'
# require '../require_all'
require_relative 'account' 
require_relative 'social_media' 
require_relative 'user' 


sound = User.new("soundarya", 30, "soundary@gmail.com")
tanner = User.new("tanner", 30, "stanner@gmail.com")
andrew = User.new("andrew", 30, "andrew@gmail.com")
mia = User.new("mia", 30, "mia@gmail.com")


facebook = SocialMedia.new("facebook", "facebook.com")
snapchat = SocialMedia.new("snapchat", "snapchat.com")
instagram = SocialMedia.new("instagram", "instagram.com")

Account.new(sound, facebook)
Account.new(tanner, snapchat)
Account.new(andrew, instagram)
binding.pry
0