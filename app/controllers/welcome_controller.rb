class WelcomeController < ApplicationController
	def index
		@latest_report = Report.order("created_at").last
		@sharing_economy = Report.find_by title: ("The Sharing Economy")		
		@brand_relevance = Report.find_by title: ("Brand Relevance")

		@charts = []


		@latest_report.questions.each do |question|

			@question = question
		
			chart = build_chart()
			@charts << chart

		end			
	end

	def build_chart
		
		def get_response_choices
			@answers = []		
			@question.responses.each do |response|
				@answers << response.answer unless @answers.include?(response.answer)
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
		get_response_choices()
		get_response_results()

		@question_path = question_path(@question.id)

		chart = LazyHighCharts::HighChart.new('graph') do |f|
		  f.title(:text => "<a href='#{@question_path}'>#{@question.title}</a>")
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
		return chart
	end
end
