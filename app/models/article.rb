class Article < ApplicationRecord
  #validates if TITLE isn't null and has this length
  validates :title, presence: true, length: {miminum: 3, maximum: 100}

  #validates if DESCRIPTION isn't null and has this length
  validates :description, presence: true, length: {miminum: 5, maximum: 300}
end
