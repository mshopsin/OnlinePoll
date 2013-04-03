class PollQuestion < ActiveRecord::Base
  attr_accessible :question_id, :poll_id

  belongs_to :questions
  belongs_to :polls

end
