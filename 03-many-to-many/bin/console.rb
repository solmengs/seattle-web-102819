require_relative '../app/author'
require_relative '../app/book'
require_relative '../app/authors_book'
require 'pry'
require 'faker'

5.times do
  author = Author.new(Faker::FunnyName.name, rand(8..100))
  book = Book.new(Book.new(Faker::Book.title))
  # Author.all.sample.write_book(Book.all.sample)
  AuthorsBook.new(author, book)
end

# soundarya = Author.new("Soundarya", 60)
# # soundarya.name = "Sound"
# jk_rowling = Book.new("JK Rowling", soundarya)

binding.pry
0
