class Order < ApplicationRecord
  belongs_to :user
  has_many :items, through: :order_items
  has_many :order_items

  enum :status, [:pending, :paid, :cancelled, :shipped, :delivered], default: :pending

end
