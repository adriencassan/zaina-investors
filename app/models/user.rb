class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :projectmembers
  has_many :projects
  has_one :profile

  after_create :send_welcome_email
  after_create :build_profile

end
