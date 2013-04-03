class ValidResponse < ActiveRecord::Base

  attr_accessible :question_id, :response
  validates :question_id, :response, :presence => true

  belongs_to :question
  has_many :responses
  has_one :poll, :through => :question

  def get_author
    question.poll.user
  end


end