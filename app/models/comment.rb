class Comment < ApplicationRecord
  belongs_to :article
  validates :author_name, :body, presence: true
end
