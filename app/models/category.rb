class Category < ApplicationRecord
  belongs_to :category, optional: true
  has_many :categories, dependent: :destroy
  has_many :bookmarks, dependent: :destroy

  def to_s
    name
  end

  def children
    children = []
    Category.where(Category_id: id).each do |child|
      children.append(child)
      unless child.category_id.nil?
        children.append(child.children)
      end
    end
    children.flatten
  end

end
