require_relative '../app/author'
require_relative '../app/book'
require 'pry'

soundarya = Author.new("Soundarya", 60)
# soundarya.name = "Sound"
jk_rowling = Book.new("JK Rowling", soundarya)

binding.pry
0
