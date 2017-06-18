require "csv"

class Deck

	attr_reader :cards

	def initialize(file)
		@cards = parse_csv(file)
	end

	def parse_csv(file)
		CSV.foreach(file).map do |row|
			Card.new(row[0],row[1])
		end
	end

end

class Card

	attr_reader :answer, :question

	def initialize(question, answer)
		@question = question
		@answer = answer
	end
end

#p Deck.new("maraton.csv", "maraton1")



