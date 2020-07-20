class AuthorBook
    attr_accessor :author, :book
    @@all = []

    def initialize(author, book)
        @author = author
        @book = book
        AuthorBook.all << self
    end

    def self.all
        @@all
    end
    

end
