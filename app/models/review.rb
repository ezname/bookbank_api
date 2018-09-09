class Review < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :book

  validates :author, presence: true
  validates :book, presence: true
  validates :rating, presence: true
end
