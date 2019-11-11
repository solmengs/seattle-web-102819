class Account 

attr_accessor :user, :social_media
    @@all = []
    
    def initialize (user, social_media)
        @user = user
        @social_media = social_media
        @@all << self 
    end
    def self.all
        @@all
    end 
end 