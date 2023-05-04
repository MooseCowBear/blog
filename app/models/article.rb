class Article < ApplicationRecord
  has_many :comments #other side of relationship between articles and comments

  validates :title, presence: true #must contain at least one non-whitespace char
  validates :body, presence: true, length: { minimum: 10 }
end
