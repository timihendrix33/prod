class AddDateToResponse < ActiveRecord::Migration
  def change
  	add_column :responses, :date, :datetime
  end
end
