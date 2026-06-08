class User < ApplicationRecord
  has_many :created_posts, class_name: "Post", foreign_key: "creator_id", dependent: :destroy
  has_many :editorial_assignments, foreign_key: "editor_id", dependent: :destroy
  has_many :edited_posts, through: :editorial_assignments, source: :post
end
