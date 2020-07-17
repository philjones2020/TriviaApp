class QuizController < ApplicationController
	def sports
		@questions = Question.where(category: "Sports")
	end

	def music
		@questions = Question.where(category: "Music")
	end

	def entertainment
		@questions = Question.where(category: "Entertainment")
	end

	def science
		@questions = Question.where(category: "Science")
	end
end
