class Post < ApplicationRecord
  belongs_to :creator, class_name: "User", foreign_key: "creator_id"
has_many :editorial_assignments, dependent: :destroy
  has_many :editors, through: :editorial_assignments, source: :editor
end
