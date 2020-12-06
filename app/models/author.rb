# frozen_string_literal: true

class Author < ApplicationRecord
  authenticates_with_sorcery!
  validates_confirmation_of :password, message: 'Should match password', if: :password
  validates :username, :email, :password, presence: true
  validates :username, :email, uniqueness: true
end
