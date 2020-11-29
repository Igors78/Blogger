# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :article
  validates :author, presence: true
  validates :body, presence: true
end
