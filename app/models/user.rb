class User < ApplicationRecord
  belongs_to :user
  has_many :grams

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
