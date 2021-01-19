class Review < ApplicationRecord
    has_many :specifications, dependent: :destroy
    has_many :sections, dependent: :destroy
    accepts_nested_attributes_for :sections, allow_destroy: true, reject_if: :all_blank
    accepts_nested_attributes_for :specifications, allow_destroy: true, reject_if: :all_blank
    def review_image
        sections.all.map(&:picture_url).first().url
    end

    validates :title, 
        presence: true, length: { maximum: 25 }
end
