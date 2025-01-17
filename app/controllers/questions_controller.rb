class QuestionsController < ApplicationController
	def show
		begin
			@question = Question.find(params[:id])
		rescue ActiveRecord::RecordNotFound
			redirect_to questions_path
		end
	end

	def index
		@questions = Question.all
	end


	def new
	end

	def create
		@question = Question.new(question_params)

		@question.save
		redirect_to @question
	end

	def destroy
		@question = Question.find(params[:id])
		@question.destroy

		redirect_to questions_path
	end


	private
		def question_params
			params.require(:question).permit(:question, :answer, :category)
		end
end
