class Gram < ApplicationRecord
  validates :message, presence: true, length: { maximum: 140, minimum: 3 }
  validates :picture, presence: true

  mount_uploader :picture, PictureUploader

  belongs_to :user
end
