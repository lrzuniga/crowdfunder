class User < ActiveRecord::Base
  authenticates_with_sorcery!
  attr_accessible :first_name, :last_name, :email, :password #, user_id
  has_many :projects

  validates :first_name, :last_name, :email, presence: true
end
