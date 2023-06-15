# == Schema Information
#
# Table name: posts
#
#  id         :bigint           not null, primary key
#  author     :text
#  content    :text
#  status     :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Post < ApplicationRecord
    include Visible
    has_rich_text :content
    has_many :comments, dependent: :destroy

    validates :title, presence: true

end
