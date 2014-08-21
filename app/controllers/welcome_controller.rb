class WelcomeController < ApplicationController
	def index
		@latest_report = Report.order("created_at").last
		@sharing_economy = Report.find_by title: ("The Sharing Economy")		
		@brand_relevance = Report.find_by title: ("Brand Relevance")
	end
end
