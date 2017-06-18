class View

	def bienvenida
		puts "Bienvenido!, presiona enter para empezar"
		gets.chomp
	end
		

	def show_question(card)
		puts "Pregunta #{card.question}"
		gets.chomp
	end

	def despedida(correct, incorrect)
		puts "Correct: #{correct}, incorrect: #{incorrect}"
	end

end


# view = View.new
# p view.bienvenida
# p view.despedida(5, 6)
