class Text < ApplicationRecord
  belongs_to :user
  has_rich_text :content

  validates :title, presence: true
  validates :content, presence: true
end


