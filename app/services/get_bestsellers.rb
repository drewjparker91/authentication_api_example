class Bestseller
  def self.get_bestseller_list
    response = HTTParty.get('https://api.nytimes.com/svc/books/v3/lists/combined-print-and-e-book-fiction.json?api-key=' + ENV["NYT_API_KEY"])
  end
end
