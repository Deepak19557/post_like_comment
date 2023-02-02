class Comment < ApplicationRecord
  belongs_to :post
  has_many :user
  has_many :likes, as: :likeable
end
