class QuestionsController < ApplicationController
	def show
		load_question
		get_response_choices
		get_response_results

		@chart = LazyHighCharts::HighChart.new('graph') do |f|
		  f.title(:text => "#{@question.title}")
		  f.xAxis(:categories => @answers)
		  f.series(:name => "Global Responses", :yAxis => 0, :data => @results)
		  # f.series(:name => "Population in Millions", :yAxis => 1, :data => [310, 127, 1340, 81, 65])

		  f.yAxis [
		    {:title => {:text => "", :margin => 70} },
		    # {:title => {:text => "Population in Millions"}, :opposite => true},
		  ]

		  f.legend(:align => 'right', :verticalAlign => 'top', :y => 75, :x => -50, :layout => 'vertical',)
		  f.chart({:defaultSeriesType=>"column"})
		end		
	end
	def load_question
	    @question = Question.find_by id: params[:id]
	end		
	def get_response_choices
		@answers = []		
		@question.responses.each do |question|
			@answers << question.answer unless @answers.include?(question.answer)
		end
		return @answers		
	end
	def get_response_results
		@region_responses = @question.responses.where(country: "total")
		@results = []
		@region_responses.each do |response|
			@results << response.answer_count
		end
		return @results
	end
end
