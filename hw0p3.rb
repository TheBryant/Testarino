class BookInStock
	def initialize(isbn, price=0)
		raise ArgumentError if isbn == '' || price < 0
		@isbn = isbn
		@price = price
	end
	def isbn=(isbn)
		@isbn = isbn
	end
	def isbn
		@isbn
	end
	def price=(price)
		@price = price
	end
	def price
		@price
	end
	def price_as_string
		str_price = @price.round(2).to_s+'0'
		dollars = (/(\d*)\.(\d*)/.match(str_price))[1]
		cents  = (/(\d*)\.(\d{2})/.match(str_price))[2]
		"$#{dollars}.#{cents}"
	end
end

#dresden = BookInStock.new("5", 20)
#puts dresden.price_as_string
#dresden.price=23.4
#puts dresden.price_as_string
#puts dresden.isbn

