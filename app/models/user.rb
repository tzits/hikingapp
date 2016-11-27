class User < ApplicationRecord
  has_secure_password
  has_many :user_checklist_items, dependent: :destroy
  has_many :checklist_items, through: :user_checklist_items
  has_many :comments
  has_many :user_list_category_items, dependent: :destroy
  has_many :items, through: :user_list_category_items
  has_attached_file :avatar, styles: { medium: "300x300#", thumb: "100x100#" }, default_url: "https://crazyhikers.files.wordpress.com/2016/05/img_0880.jpg"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  def self.confirm (email, password)
    user = User.find_by(email: email)
    user.authenticate(password)
  end
end
