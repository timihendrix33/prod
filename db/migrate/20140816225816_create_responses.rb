class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.string :country
      t.string :answer
      t.integer :answer_rank
      t.integer :count

      t.timestamps
    end
  end
end
