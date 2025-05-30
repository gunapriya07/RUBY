
module Greetable  #modules
  def greet
    "Hello, I am #{name}!"
  end
end


module Library
  class Author
    attr_accessor :name

    def initialize(name)
      @name = name
    end
  end

  class Book
    include Greetable  # Mixin

    attr_accessor :name, :title

    def initialize(name, title)
      @name = name
      @title = title
    end

    def details
      "#{title} by #{name}"
    end
  end
end


author = Library::Author.new("George Orwell")
book = Library::Book.new(author.name, "1984")

puts book.details          
puts book.greet            
