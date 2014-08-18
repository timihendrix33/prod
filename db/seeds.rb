report_list = [
	["The Sharing Economy", "Released in May of 2014", "http://www.prosumer-report.com/blog/category/the-new-consumer-and-the-sharing-economy/"],
	["Brand Relevance", "Released in December of 2013", "http://www.prosumer-report.com/blog/category/brand-relevance/"]	
]

report_list.each do |title, description, link|
	Report.create(title: title, description: description, link: link)
end

question_list = [
	["Companies/retailers should help customers resell their goods.", "Ethics", "The Sharing Economy"],
	["Brands are an important part of the creative content online.", "Online", "The Sharing Economy"],
	["I like it when brands ask consumers to get involved through crowdsourcing, creating brand videos, etc.", "Engagement", "Brand Relevance"],
	["It makes me feel good when I see someone I admire using the same brand I use.", "Engagement", "Brand Relevance"]
]

questions_list.each do |title, tag, report_title|
	Question.create(title: title, tag: tag, report_id: Report.find_by.title(report_title).id)
end

response_list = [
	["total", "Strongly Agree", 5, 2713, DateTime.new(2013,6,30), "Companies/retailers should help customers resell their goods."],
	["US", "Strongly Agree", 5, 96, DateTime.new(2013,6,30), "Companies/retailers should help customers resell their goods."],
	["UK", "Strongly Agree", 5, 69, DateTime.new(2013,6,30), "Companies/retailers should help customers resell their goods."],
	["total", "Somewhat Agree", 5, 3828, DateTime.new(2013,6,30), "Companies/retailers should help customers resell their goods."],
	["US", "Somewhat Agree", 5, 142, DateTime.new(2013,6,30), "Companies/retailers should help customers resell their goods."],
	["UK", "Somewhat Agree", 5, 198, DateTime.new(2013,6,30), "Companies/retailers should help customers resell their goods."],	
	["total", "Neither agree nor disagree", 5, 3017, DateTime.new(2013,6,30), "Companies/retailers should help customers resell their goods."],
	["US", "Neither agree nor disagree", 5, 170, DateTime.new(2013,6,30), "Companies/retailers should help customers resell their goods."],
	["UK", "Neither agree nor disagree", 5, 173, DateTime.new(2013,6,30), "Companies/retailers should help customers resell their goods."],	
	["total", "Somewhat disagree", 5, 740, DateTime.new(2013,6,30), "Companies/retailers should help customers resell their goods."],
	["US", "Somewhat disagree", 5, 56, DateTime.new(2013,6,30), "Companies/retailers should help customers resell their goods."],
	["UK", "Somewhat disagree", 5, 53, DateTime.new(2013,6,30), "Companies/retailers should help customers resell their goods."],		
	["total", "Strongly disagree", 5, 276, DateTime.new(2013,6,30), "Companies/retailers should help customers resell their goods."],
	["US", "Strongly disagree", 5, 37, DateTime.new(2013,6,30), "Companies/retailers should help customers resell their goods."],
	["UK", "Strongly disagree", 5, 9, DateTime.new(2013,6,30), "Companies/retailers should help customers resell their goods."],			
]
