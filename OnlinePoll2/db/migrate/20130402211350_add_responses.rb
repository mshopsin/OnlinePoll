class AddResponses < ActiveRecord::Migration

  def change

    create_table :responses do |t|

      t.integer :valid_response_id
      t.integer :user_id
      t.timestamps
    end

  end

end
