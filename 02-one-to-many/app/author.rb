require_relative 'book'

class Author

  attr_reader :name
  attr_accessor :age, :books

  # Array of string of titles.
  # Book.new - creates a whole book.
  # array of book objects [ #<B>, #<B> ... ]
    # title will be an attribute.

  def initialize(name, age)
    @name = name
    @age = age
    #instance variable
    @books = [ ]
  end

  def write_book(title)
    # take a title
    # create a new Books
    # adds it to the authors book collection
    # binding.pry
    book = Book.new(title, self)
    @books << book
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
