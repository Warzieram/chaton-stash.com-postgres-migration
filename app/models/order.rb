class Order < ApplicationRecord
  belongs_to :user
  has_many :items, through: :order_items
  has_many :order_items

  enum :status, [:pending, :paid, :cancelled, :shipped, :delivered]

  # Optionnel : valeur par défaut lors de la création
  after_initialize :set_default_status, if: :new_record?

  private

  def set_default_status
    self.status ||= :pending
  end
end
