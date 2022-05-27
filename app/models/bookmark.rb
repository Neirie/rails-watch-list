class Bookmark < ApplicationRecord
  belongs_to :movie, :list
end
