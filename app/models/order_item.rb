class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :product

  validates_presence_of :order_id
  validates_presence_of :product_id
  validates_numericality_of :quantity, only_integer: true,
                                       greater_than_or_equal_to: 0

  def subtotal
    product.price * quantity
  end
end
