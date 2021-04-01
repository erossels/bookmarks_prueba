class Kind < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
end
