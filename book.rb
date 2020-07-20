class Book
    attr_reader :title, :word_count
    @@all = []

    def initialize(title, word_count)
        @title = title
        @word_count = word_count
        Book.all << self
    end

    def self.all
        @@all
    end

    def author_books
        AuthorBook.all.select{|author_book| author_book.book == self}
    end

    def authors
        self.author_books.map{|author_book| author_book.author}.uniq
    end

endexit
