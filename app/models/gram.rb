class Gram < ApplicationRecord
  mount_uploader :picture, PictureUploader
  validates :message, presence: true, length: { maximum: 140, minimum: 3 }

  belongs_to :user
end
