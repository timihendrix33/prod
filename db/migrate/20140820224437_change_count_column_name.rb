class ChangeCountColumnName < ActiveRecord::Migration
  def change
  	rename_column :responses, :count, :answer_count
  end
end
