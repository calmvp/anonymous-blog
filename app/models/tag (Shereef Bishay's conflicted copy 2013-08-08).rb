class Tag < ActiveRecord::Base
  validates :title, :presence => true
  has_many :posts_tags
  has_many :posts, through: :posts_tags
end
