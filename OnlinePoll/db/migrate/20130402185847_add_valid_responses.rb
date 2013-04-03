class AddValidResponses < ActiveRecord::Migration

  def change
    create_table :valid_responses do |t|
      t.string :response
      t.integer :question_id
      t.timestamps
    end
  end
end
