class ReportQuestionResponseAssociations < ActiveRecord::Migration
  def change
  	add_column :questions, :report_id, :integer
  	add_column :responses, :question_id, :integer
  end
end
