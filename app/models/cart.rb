class Cart < ApplicationRecord
  has_many :cart_items
  belongs_to :user

  def has_product?(product)
    !cart_items.where(product_id: product).empty?
  end
end
