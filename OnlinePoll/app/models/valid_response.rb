class ValidResponse < ActiveRecord::Base
  attr_accessible :response, :question_id

  belongs_to :questions
end