class Profile < ApplicationRecord
  belongs_to :user
  mount_uploader :photo, PhotoUploader
  mount_uploader :resume, PhotoUploader

  before_create :get_email
  before_create :get_first_name
  before_create :get_last_name

  def get_email
    self.email = user.email
  end

  def get_first_name
    self.first_name = user.first_name
  end

  def get_last_name
    self.last_name = user.last_name
  end

end
