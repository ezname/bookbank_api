class Book < ApplicationRecord
  has_and_belongs_to_many :authors
  has_many :reviews

  validates :title, presence: true
end
