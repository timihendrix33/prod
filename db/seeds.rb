puts "seeding the reports"

report_list = [
	["The Sharing Economy", "Released in May of 2014", "http://www.prosumer-report.com/blog/category/the-new-consumer-and-the-sharing-economy/"],
	["Brand Relevance", "Released in December of 2013", "http://www.prosumer-report.com/blog/category/brand-relevance/"]	
]
Report.delete_all
report_list.each do |title, description, link|
	Report.create(title: title, description: description, link: link)
end

puts "seeding the questions"

question_list = [
	["Companies/retailers should help customers resell their goods.", "Ethics", "The Sharing Economy"],
	["Brands are an important part of the creative content online.", "Online", "The Sharing Economy"],
	["I like it when brands ask consumers to get involved through crowdsourcing, creating brand videos, etc.", "Engagement", "Brand Relevance"],
	["It makes me feel good when I see someone I admire using the same brand I use.", "Engagement", "Brand Relevance"]
]

Question.delete_all
question_list.each do |title, tag, report_title|
	@report_title = Report.find_by title: report_title

	Question.create(title: title, tag: tag, report_id: @report_title.id)
end

puts "seeding the responses"

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
	["total", "Strongly Agree", 5, 1820, DateTime.new(2013,6,30), "Brands are an important part of the creative content online."],
	["US", "Strongly Agree", 5, 72, DateTime.new(2013,6,30), "Brands are an important part of the creative content online."],
	["UK", "Strongly Agree", 5, 44, DateTime.new(2013,6,30), "Brands are an important part of the creative content online."],
	["total", "Somewhat Agree", 5, 3815, DateTime.new(2013,6,30), "Brands are an important part of the creative content online."],
	["US", "Somewhat Agree", 5, 173, DateTime.new(2013,6,30), "Brands are an important part of the creative content online."],
	["UK", "Somewhat Agree", 5, 140, DateTime.new(2013,6,30), "Brands are an important part of the creative content online."],	
	["total", "Neither agree nor disagree", 5, 3797, DateTime.new(2013,6,30), "Brands are an important part of the creative content online."],
	["US", "Neither agree nor disagree", 5, 193, DateTime.new(2013,6,30), "Brands are an important part of the creative content online."],
	["UK", "Neither agree nor disagree", 5, 247, DateTime.new(2013,6,30), "Brands are an important part of the creative content online."],	
	["total", "Somewhat disagree", 5, 824, DateTime.new(2013,6,30), "Brands are an important part of the creative content online."],
	["US", "Somewhat disagree", 5, 50, DateTime.new(2013,6,30), "Brands are an important part of the creative content online."],
	["UK", "Somewhat disagree", 5, 44, DateTime.new(2013,6,30), "Brands are an important part of the creative content online."],		
	["total", "Strongly disagree", 5, 318, DateTime.new(2013,6,30), "Brands are an important part of the creative content online."],
	["US", "Strongly disagree", 5, 12, DateTime.new(2013,6,30), "Brands are an important part of the creative content online."],
	["UK", "Strongly disagree", 5, 26, DateTime.new(2013,6,30), "Brands are an important part of the creative content online."],		
	["total", "Strongly Agree", 5, 1622, DateTime.new(2013,6,30), "I like it when brands ask consumers to get involved through crowdsourcing, creating brand videos, etc."],
	["US", "Strongly Agree", 5, 64, DateTime.new(2013,6,30), "I like it when brands ask consumers to get involved through crowdsourcing, creating brand videos, etc."],
	["UK", "Strongly Agree", 5, 42, DateTime.new(2013,6,30), "I like it when brands ask consumers to get involved through crowdsourcing, creating brand videos, etc."],
	["total", "Somewhat Agree", 5, 3170, DateTime.new(2013,6,30), "I like it when brands ask consumers to get involved through crowdsourcing, creating brand videos, etc."],
	["US", "Somewhat Agree", 5, 127, DateTime.new(2013,6,30), "I like it when brands ask consumers to get involved through crowdsourcing, creating brand videos, etc."],
	["UK", "Somewhat Agree", 5, 121, DateTime.new(2013,6,30), "I like it when brands ask consumers to get involved through crowdsourcing, creating brand videos, etc."],	
	["total", "Neither agree nor disagree", 5, 4384, DateTime.new(2013,6,30), "I like it when brands ask consumers to get involved through crowdsourcing, creating brand videos, etc."],
	["US", "Neither agree nor disagree", 5, 231, DateTime.new(2013,6,30), "I like it when brands ask consumers to get involved through crowdsourcing, creating brand videos, etc."],
	["UK", "Neither agree nor disagree", 5, 265, DateTime.new(2013,6,30), "I like it when brands ask consumers to get involved through crowdsourcing, creating brand videos, etc."],	
	["total", "Somewhat disagree", 5, 958, DateTime.new(2013,6,30), "I like it when brands ask consumers to get involved through crowdsourcing, creating brand videos, etc."],
	["US", "Somewhat disagree", 5, 50, DateTime.new(2013,6,30), "I like it when brands ask consumers to get involved through crowdsourcing, creating brand videos, etc."],
	["UK", "Somewhat disagree", 5, 56, DateTime.new(2013,6,30), "I like it when brands ask consumers to get involved through crowdsourcing, creating brand videos, etc."],		
	["total", "Strongly disagree", 5, 440, DateTime.new(2013,6,30), "I like it when brands ask consumers to get involved through crowdsourcing, creating brand videos, etc."],
	["US", "Strongly disagree", 5, 29, DateTime.new(2013,6,30), "I like it when brands ask consumers to get involved through crowdsourcing, creating brand videos, etc."],
	["UK", "Strongly disagree", 5, 18, DateTime.new(2013,6,30), "I like it when brands ask consumers to get involved through crowdsourcing, creating brand videos, etc."],			
	["total", "Strongly Agree", 5, 2167, DateTime.new(2013,6,30), "It makes me feel good when I see someone I admire using the same brand I use."],
	["US", "Strongly Agree", 5, 79, DateTime.new(2013,6,30), "It makes me feel good when I see someone I admire using the same brand I use."],
	["UK", "Strongly Agree", 5, 56, DateTime.new(2013,6,30), "It makes me feel good when I see someone I admire using the same brand I use."],
	["total", "Somewhat Agree", 5, 3367, DateTime.new(2013,6,30), "It makes me feel good when I see someone I admire using the same brand I use."],
	["US", "Somewhat Agree", 5, 170, DateTime.new(2013,6,30), "It makes me feel good when I see someone I admire using the same brand I use."],
	["UK", "Somewhat Agree", 5, 126, DateTime.new(2013,6,30), "It makes me feel good when I see someone I admire using the same brand I use."],	
	["total", "Neither agree nor disagree", 5, 3455, DateTime.new(2013,6,30), "It makes me feel good when I see someone I admire using the same brand I use."],
	["US", "Neither agree nor disagree", 5, 195, DateTime.new(2013,6,30), "It makes me feel good when I see someone I admire using the same brand I use."],
	["UK", "Neither agree nor disagree", 5, 215, DateTime.new(2013,6,30), "It makes me feel good when I see someone I admire using the same brand I use."],	
	["total", "Somewhat disagree", 5, 958, DateTime.new(2013,6,30), "It makes me feel good when I see someone I admire using the same brand I use."],
	["US", "Somewhat disagree", 5, 40, DateTime.new(2013,6,30), "It makes me feel good when I see someone I admire using the same brand I use."],
	["UK", "Somewhat disagree", 5, 60, DateTime.new(2013,6,30), "It makes me feel good when I see someone I admire using the same brand I use."],		
	["total", "Strongly disagree", 5, 626, DateTime.new(2013,6,30), "It makes me feel good when I see someone I admire using the same brand I use."],
	["US", "Strongly disagree", 5, 17, DateTime.new(2013,6,30), "It makes me feel good when I see someone I admire using the same brand I use."],
	["UK", "Strongly disagree", 5, 45, DateTime.new(2013,6,30), "It makes me feel good when I see someone I admire using the same brand I use."],				
]

Response.delete_all
response_list.each do |country, answer, answer_rank, count, date, question_title|
	@question_title = Question.find_by title: question_title	
	Response.create(country: country, answer: answer, answer_rank: answer_rank, count: count, date: date, question_id: @question_title.id)
end


puts "successfully seeded reports questions and responses"