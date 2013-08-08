class Post < ActiveRecord::Base
  validates :body, :presence => true
  validates :title, :presence => true, length: { minimum: 5 }
  has_many :posts_tags
  has_many :tags, through: :posts_tags
end
