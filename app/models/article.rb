class Article < ApplicationRecord
  #validates if TITLE isn't null and has this length
  validates :title, presence: true, length: {minimum: 3, maximum: 100}

  #validates if DESCRIPTION isn't null and has this length
  validates :description, presence: true, length: {minimum: 5, maximum: 300}
end
