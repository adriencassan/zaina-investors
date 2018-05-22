class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :projectmembers
  has_many :projects


   def self.advisor
    @advisors = User.where(role: "Advisor")
   end

end
