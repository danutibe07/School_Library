require_relative 'rental'
require_relative 'person'

class Book
  attr_accessor :id, :title, :author, :rentals

  def initialize(id, title, author)
    @id = id
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(book, person)
    rental = Rental.new(book, person, self)
    @rentals << rental
  end

  def to_s
    "Book: #{title} by #{author}"
  end
end
