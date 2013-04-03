class Response < ActiveRecord::Base

  attr_accessible :response, :user_id, :poll_queston_id

  belongs_to :user
  belongs_to :poll_question

end