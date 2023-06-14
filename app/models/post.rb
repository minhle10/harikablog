class Post < ApplicationRecord
    include Visible
    has_rich_text :content
    has_many :comments, dependent: :destroy

    validates :title, presence: true

end
