class Author
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        Author.all << self
    end

    def self.all
        @@all
    end

    def books
        Book.all.select do |book|
            book.author == self
        end
    end

    def write_book(title, word_count)
        Book.new(title, self, word_count)
    end

    def total_words
        total = 0
        books.map do |book|
            total += book.word_count
        end
        total
    end

    def self.most_words
        most = 0
        top_writer = ""
        self.all.each do |author|
            words = author.total_words
            if words > most
                most = words
                top_writer = author.name
            end
        end
        top_writer
    end


end
