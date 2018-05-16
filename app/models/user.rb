class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  attr_reader :last_name
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :project_members
  has_many :projects, through: :project_member

  def self.advisor
   User.where(role: "advisor")
  end

end
