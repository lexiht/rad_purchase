class Supplier < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  has_many :items, dependent: :destroy
end
