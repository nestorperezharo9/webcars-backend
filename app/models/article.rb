class Article < ApplicationRecord
    mount_uploader :picture, PictureUploader

    validates :title, 
        presence: true, length: { maximum: 25 }
    validates :description,
        length: { maximum: 1800}, length: { minimum: 20}
    validates :picture,
        presence: true
    validates :category,
        presence: true
end
