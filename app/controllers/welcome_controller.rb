class WelcomeController < ApplicationController
	def index
		@latest_report = Report.order("created_at").last
	end
end
