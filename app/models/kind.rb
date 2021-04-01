class Kind < ApplicationRecord
  has_many :bookmarks, dependent: :destroy

  def to_s
    name
  end
  
end
