class FocusGroup < ActiveRecord::Base

  attr_accessible :poll_id, :user_id
  validates :poll_id, :user_id, :presence => true

  belongs_to :poll
  belongs_to :user

end