class QuizController < ApplicationController
	skip_before_action :verify_authenticity_token
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

	def answered
		current_user.score += 4 if params[:correct]
		current_user.score -= 1 if params[:wrong]
		current_user.save
	end
end
