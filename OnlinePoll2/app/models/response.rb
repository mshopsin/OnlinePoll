class Response < ActiveRecord::Base

  attr_accessible :valid_response_id, :user_id
  validates :valid_response_id, :user_id, :presence => true
  validate :valid_response_id?
  validate :not_owner_response
  validates_uniqueness_of :user_id,
                          :scope => :valid_response_id

  belongs_to :valid_response
  belongs_to :user


  def valid_response_id?
    unless ValidResponse.where(:id => valid_response_id).exists?
      errors[:valid_response_id] << "Invalid answer ID"
    end
  end

  def not_owner_response
    unless self.valid_response.question.poll.user.id != self.user_id
      errors[:not_owner_reponse] << "Owner can't take his own poll"
    end
  end



end