class Bookmark < ApplicationRecord
  belongs_to :category
  belongs_to :kind

  def to_s
    name
  end

end
