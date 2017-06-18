require "csv"

class Deck

	def initialize(file, title)
		@title = title
		@cards = parse_csv(file)
	end

	def parse_csv(file)
		CSV.foreach(file).map do |row|
			Card.new(row[0],row[1])
		end
	end

end

class Card
	def initialize(question, answer)
		@question = question
		@answer = answer
	end
end

