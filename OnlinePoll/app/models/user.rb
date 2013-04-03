class User < ActiveRecord::Base
  attr_accessible :username, :email

  has_many :polls
  has_many :responses

end