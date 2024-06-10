class Diary < ApplicationRecord

  has_one_attached :image

  validates :date, presence: true
  validates :title, presence: true, uniqueness: true
  validates :content, presence: true
  validates :content, presence: true

  # has_one :user

end
