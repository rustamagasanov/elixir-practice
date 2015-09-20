defmodule OrderTax do
  def calculate(orders, tax_rates) do
    for order <- orders do
      total = order[:net_amount]
      if Keyword.has_key?(tax_rates, order[:ship_to]) do
        total = total + tax_rates[order[:ship_to]]
      end
      Keyword.put(order, :total_amount, total)
    end
  end
end
