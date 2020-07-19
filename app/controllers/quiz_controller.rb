class QuizController < ApplicationController
	def sports
		@question = Question.where(category: "Sports").order(Arel.sql('RANDOM()')).first
	end

	def music
		@question = Question.where(category: "Music").order(Arel.sql('RANDOM()')).first
	end

	def entertainment
		@question = Question.where(category: "Entertainment").order(Arel.sql('RANDOM()')).first
	end

	def science
		@question = Question.where(category: "Science").order(Arel.sql('RANDOM()')).first
	end
end
