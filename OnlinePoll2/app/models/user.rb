class User < ActiveRecord::Base

  attr_accessible :username, :email
  validates :username, :email, :presence => true
  validates :username, :email, :uniqueness => true

  has_many :polls
  has_many :responses




end