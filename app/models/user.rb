class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :projectmembers
  has_many :projects

  after_create :send_welcome_email

   def self.advisor
    @advisors = User.where(role: "Advisor")
   end

    def self.zaina
    @zainas = User.where(role: "Zaina")
   end

  def is_admin?
    self.role == "Zaina"
  end

  def is_entrepreneur?
    self.role == "Entrepreneur"
  end

  def is_advisor?
    self.role == "Advisor"
  end

  def has_projectmember?
     unless (self.projectmembers.nil? || self.projectmembers.empty?)
      end
  end

private

  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end

end
