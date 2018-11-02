# Products Helper
module ProductsHelper
  # @return [object] the price with prefixed currency sign
  def print_price(price)
    number_to_currency price
  end

  # @return [object] the
  def print_stock(stock)
    if stock > 0
      content_tag(:div, "In Stock #{stock}", class: 'in_stock')
    else
      content_tag(:div, 'Out of Stock', class: 'out_stock')
    end
  end
end