class Projectmember < ApplicationRecord
  belongs_to :user
  belongs_to :project

  after_create :projectmember_after_create

   def projectmember_after_create
    if self.user.is_advisor?
       UserMailer.advisor(self).deliver_now
    end
  end
end
