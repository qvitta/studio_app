require 'active_support/all'
require 'pry'

class Book
  attr_reader :author, :title

  delegate :name, to: :author, allow_nil: true, prefix: true

  def initialize(title, author=nil)
    @title = title
    @author = author
  end

  alias_method :name, :title
end

class Author
  attr_accessor :name

  def initialize(name="anonymous")
    @name = name
  end

  def offend_by_family(family)
    "me cago en tu #{family}"
  end

  def method_missing(msg, *args)
    if msg.to_s.match /^offend_by_(.+)/
      offend_by_family($1)
    else
      super
    end
  end
end

anon = Author.new
pepe = Author.new("Pepe")

book1 = Book.new("Libreo 1")
book2 = Book.new("Libreo 2", anon)
book3 = Book.new("Libreo 3", pepe)

puts book1.name
puts book1.author.inspect
puts book1.author_name

puts book2.name
puts book2.author
puts book2.author_name

puts book3.name
puts book3.author
puts book3.author_name

puts pepe.offend_by_madre
puts pepe.offend_by_tio

# binding.pry
