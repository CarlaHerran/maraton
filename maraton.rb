require_relative 'modelo.rb'
require_relative 'vista.rb'

class Maraton

	def initialize
		@deck = Deck.new("maraton.csv", "maraton")
		@view = View.new
		start_game
	end

	def start_game
		@view.bienvenida
		answers = @deck.cards.map do |card|
			answer = @view.show_question(card)
			card.answer == answer
		end
		correct = count_answers(answers, true)
		incorrect = count_answers(answers, false)
		@view.despedida(correct, incorrect)
	end

	def count_answers(answers, bool)
		answers.select{|value| value == bool}.count
	end

end


Maraton.new