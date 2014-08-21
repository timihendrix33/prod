class ReportsController < ApplicationController
	def show
		load_report
	end
	def load_report
	    @report = Report.find_by id: params[:id]
	end		
end
