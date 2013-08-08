class Post < ActiveRecord::Base
  validates :body, :presence => true
  validates :title, :presence => true, length: { minimum: 5 }
  has_many :post_tags
  has_many :tags, through: :post_tags

  def tags=(tag_names)
    self.tags.clear
    tag_names.split(',').map do |name|
      self.tags << Tag.find_or_create_by_title(name.strip)
    end
  end

end
