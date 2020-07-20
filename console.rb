require 'pry'
require_relative './book'
require_relative './author'
require_relative './author_book.rb'

karan = Author.new("Karan S. Chauhan")
nazia = Author.new("Nazia Talukder")
ragnar = Author.new("Ragnar Lothbrok")


karan.write_book("autobiography", 1000)
nazia.write_book("graduates", 2000)
ragnar.write_book("Power is given to those who are prepared to lower themselves to pick it up", 5000)
ragnar.write_book("I wish I Never Left The Farm", 2000)
ragnar.write_book("Power", 10000)

ab1 = AuthorBook.new(ragnar, "Power")
ab2 = AuthorBook.new(karan, "autobiography")
ab3 = AuthorBook.new(nazia, "graduates")


binding.pry


