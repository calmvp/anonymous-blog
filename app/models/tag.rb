class Tag < ActiveRecord::Base
  validates :title, :presence => true
  has_many :post_tags
  has_many :posts, through: :post_tags

end


