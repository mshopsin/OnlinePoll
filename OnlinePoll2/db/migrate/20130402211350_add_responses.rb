class AddResponses < ActiveRecord::Migration

  def change

    create_table :responses do |t|

      t.integer :valid_response_id
      t.integer :user_id
      t.timestamps
    end

    add_index :responses, :valid_response_id
    add_index :responses, :user_id
  end

end
