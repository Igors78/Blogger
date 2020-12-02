# frozen_string_literal: true

# Class Description
class Tag < ApplicationRecord
  has_many :taggings
  has_many :articles, through: :taggings, dependent: :destroy
  validates :name, presence: true
  def to_s
    name
  end
end
