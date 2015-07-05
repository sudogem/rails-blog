class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable

  # DEPRECATED
  # validates_length_of :password, :within => 1..10
  # validates_confirmation_of :password
  validates :email, presence: true
  validates :password, confirmation: true, length: { within: 1..10 } 
end
