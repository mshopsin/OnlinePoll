class Question < ActiveRecord::Base

  attr_accessible :poll_id, :question
  validates :poll_id, :question, :presence => true

  belongs_to :poll
  has_many :valid_responses
  has_many :responses, :through => :valid_responses

end