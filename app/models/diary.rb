class Diary < ApplicationRecord
  validates :date, presence: true
  validates :title, presence: true, uniqueness: true
  validates :content, presence: true

  # has_one :user
  # has_one :comment
end
