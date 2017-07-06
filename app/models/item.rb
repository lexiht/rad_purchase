class Item < ApplicationRecord
  belongs_to :supplier
  has_and_belongs_to_many :order_items
end
