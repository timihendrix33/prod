class WelcomeController < ApplicationController
	def index
		@latest_report = Report.order("created_at").last
		@sharing_economy = Report.find_by title: ("The Sharing Economy")		
		@brand_relevance = Report.find_by title: ("Brand Relevance")




		@latest_report.questions.each do |question|
			@question = question

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
	end
end
