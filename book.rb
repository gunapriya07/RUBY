class Book
  attr_accessor :title ,:author ,:pages ,:cost

  def initialize(title,author,pages,cost)
    @title=title
    @author=author
    @pages=pages
    @cost=cost
  end

  def summary
    puts "#{title} by #{author},#{pages} and cost of book #{cost}"
  end

end
book1=Book.new("Heart Lamp","Banu Mushtaq",100,315)
book1.summary