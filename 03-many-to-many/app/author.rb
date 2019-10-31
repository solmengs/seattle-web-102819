# require_relative 'book'
# require 'pry'

class Author
  attr_reader :name
  attr_accessor :age #, :books

  @@all = [ ]

  # Array of string of titles.
  # Book.new - creates a whole book.
  # array of book objects [ #<B>, #<B> ... ]
    # title will be an attribute.

  def initialize(name, age)
    @name = name
    @age = age
    #instance variable
    # @books = [ ]
    @@all << self
    # Book.new("test", "test")
  end

  def self.all
    @@all
  end

  def write_book(book)
    # take a title
    # create a new Books
    # adds it to the authors book collection
    # binding.pry
    AuthorsBook.new(self,book)
    # @books << book
  end

  def books
    # binding.pry
    authors_books = AuthorsBook.all.select do |authors_book|
      authors_book.author == self
    end

    authors_books.map do |authors_books|
      authors_books.book
    end
  end




  # #getter
  # def name
  #   @name
  # end
  #
  # #getter
  # def age
  #   @age
  # end

  #attr_accessor is going to write the setter
  #def name=(name)
  # @name = name
  # end

  #setter
  # def age=(age)
  #   @age = age
  # end
end
