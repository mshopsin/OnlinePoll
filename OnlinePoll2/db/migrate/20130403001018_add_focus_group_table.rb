class AddFocusGroupTable < ActiveRecord::Migration

  def change
    create_table :focus_groups do |t|
      t.integer :user_id
      t.integer :poll_id

      t.timestamps
    end
  end

end
