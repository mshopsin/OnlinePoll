class Poll < ActiveRecord::Base

  attr_accessible :name, :user_id
  validates :name, :user_id, :presence => true
  validates :name, :uniqueness => true

  belongs_to :user
  has_many :questions
  has_many :responses, :through=>:questions


  def results

  end

end