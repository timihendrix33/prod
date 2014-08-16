class Question < ActiveRecord::Base
	belongs_to :report
	has_many :responses
end
