class Book
  attr_reader :author, :title, :count

  def initialize(author, title, count)
    @author = author
    @title = title
    @count = count
  end

  def to_s
    "author: #{author} title: #{title} count: #{count}"
  end
end

book_array = []
book_array << Book.new("Beatrice Potter", "Peter Rabbit", 25)
book_array << Book.new("Henry Fielding", "Tom Jones", 12)
book_array << Book.new("Bob Woodward", "All the President's Men", 30)

puts "\nSorting alphabetically by author"
new_array = book_array.sort do |a, b|
  author1 = a.author.downcase
  author2 = b.author.downcase
  author1 <=> author2
    # if author1 > author2
    #   1
    # elsif author1 < author2
    #   -1
    # else
    #   0
    # end
end

puts new_array

puts "\nSorting alphabetically by title"
sort_by_title = book_array.sort do |a, b|
  a.title.downcase <=> b.title.downcase
end

puts sort_by_title

puts "\nSorting by count of copies"
sort_by_copies = book_array.sort do |a, b|
  a.count <=> b.count
end

puts sort_by_copies