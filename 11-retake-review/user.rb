class User
attr_reader :name 
attr_accessor :age, :email
    @@all = []

    def initialize (name, age, email)
        @name = name 
        @age = age 
        @email = email
        @@all << self 
    end 
    
    def self.all
        @@all
    end 
    def all_my_accounts
        Account.all.select do |account| 
            account.user == self 
        end 
    end 
end 