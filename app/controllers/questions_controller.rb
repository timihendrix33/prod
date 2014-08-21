class QuestionsController < ApplicationController
	def show
		load_question
	end
	def load_question
	    @question = Question.find_by id: params[:id]
	end		
end
