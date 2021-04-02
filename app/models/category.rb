class Category < ApplicationRecord
  belongs_to :category, optional: true
  has_many :categories, dependent: :destroy
  has_many :bookmarks, dependent: :destroy

  def to_s
    name
  end

  def children
    children = []
    Category.where(category_id: id).each do |child|
      children.append(child)
      unless child.category_id.nil?
        children.append(child.children)
      end
    end
    children.flatten
  end

  def retrieval
    @bookmarks = Bookmark.where(category_id: id)
    content = [ { 'Category': [] }, {'Bookmarks': []}, {'Subcategories': []} ]

    content[0]['Category'] = {
      category_id: id,
      category_name: name,
      is_public: is_public,
      parent_category: category_id
    }

    if is_public
      bookmarks_array = []
      @bookmarks.each do |bookmark|
        bookmarks_hash = {
          id: bookmark.id, 
          name: bookmark.name, 
          url: bookmark.url,
          category_id: bookmark.category_id,
          kind_id: bookmark.kind_id, 
          created_at: bookmark.created_at,
          updated_at: bookmark.updated_at
        }
        bookmarks_array.append(bookmarks_hash)
      end
      content[1]['Bookmarks'] = bookmarks_array

      parents_array = []
      self.children.each do |child|
        unless child.nil?
          children_hash = child.retrieval
          parents_array.append(children_hash)
        end
      end

      content[2]['Subcategories'] = parents_array
    else
      content[1]['Bookmarks'] = 'This category is not open to public'
      content[2]['Subcategories'] = 'This category is not open to public'
    end 

    content
  end

end
