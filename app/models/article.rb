class Article < ApplicationRecord
  validates :title, presence: true #must contain at least one non-whitespace char
  validates :body, presence: true, length: { minimum: 10 }
end
