class Question < ActiveRecord::Base
  attr_accessible :question

  has_many :poll_questions
  has_many :valid_responses

end