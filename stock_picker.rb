def stock_picker(arr)
  max_diff = 0
  past_prices = []
  ans = []
  arr.each do |price|
    past_prices << price
    (arr - past_prices).each do |other_price|
      profit = other_price - price
      if profit > max_diff
        max_diff = profit
        ans.clear
        ans.push(arr.index(price), arr.index(other_price)) 
      end
    end
  end
  ans
end


result = stock_picker([17,3,6,9,15,8,6,1,10])

p result
