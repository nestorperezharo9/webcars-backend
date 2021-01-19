class Section < ApplicationRecord
  belongs_to :review, optional: true
  mount_uploader :picture_url, PictureUploader

  validates :title, 
      presence: true, length: { maximum: 25 }
  validates :body,
      length: { maximum: 1200}, length: { minimum: 20}
  validates :picture_url,
      presence: true
end
