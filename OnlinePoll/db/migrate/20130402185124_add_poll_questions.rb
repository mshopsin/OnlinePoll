class AddPollQuestions < ActiveRecord::Migration

  def change
    create_table :poll_questions do |t|
      t.integer :question_id
      t.integer :poll_id
      t.timestamps
    end
  end

end
