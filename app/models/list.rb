class List < ApplicationRecord
  has_many :movies, through: :bookmarks, dependent: :destroy
  belongs_to :bookmarks
  validates :name, presence: true
  validates :name, uniqueness: true
end
