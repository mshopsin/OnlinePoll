class Poll < ActiveRecord::Base
  attr_accessible :name, :user_id

  has_many :poll_questions
  belongs_to :user


end