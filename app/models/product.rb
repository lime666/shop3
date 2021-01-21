class Product < ApplicationRecord
  validates :title, :price, :description, presence: true
  belongs_to :category

  def category_title
    category.try(:title)
  end

  def category_title=(title)
    self.category = Category.find_or_create_by(title: title) if title.present?
  end

  def to_param
    "#{id}-#{title.gsub(/[^a-z0-9]+/i, '-')}"
  end

end
