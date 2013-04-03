class AddResponses2 < ActiveRecord::Migration

  def change

    create_table :responses do |t|

      t.integer :response_id
      t.integer :user_id
      t.timestamps
    end

  end

end
