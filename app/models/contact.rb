class Contact < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  validates :message, presence: true
end
