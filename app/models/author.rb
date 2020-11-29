class Author < ApplicationRecord
  authenticates_with_sorcery!
  validates_confirmation_of :password, message: 'Should match confirmation', if: :password
end
