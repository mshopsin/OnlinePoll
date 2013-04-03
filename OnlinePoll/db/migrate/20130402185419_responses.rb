class Responses < ActiveRecord::Migration

  def change
    create_table :responses do |t|
      t.string :response
      t.integer :user_id
      t.timestamps
    end
  end
end