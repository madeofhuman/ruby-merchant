# Products Helper
module ProductsHelper
  # @return [object] the price with prefixed currency sign
  def print_price(price)
    number_to_currency price
  end

  # @return [object] the
  def print_stock(stock, requested = 1)
    if stock.zero?
      content_tag(:div, 'Out of Stock', class: 'out_stock')
    elsif stock > requested
      content_tag(:div, "In Stock #{stock}", class: 'in_stock')
    elsif stock < requested
      content_tag(:span, "Insufficient stock (#{stock})", class: "low_stock")
    end
  end
end