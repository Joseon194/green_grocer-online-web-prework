require "pry"

def consolidate_cart(cart)
consolidated_cart = {}
  items_array = [] 

  items_array = cart.map {|items_hash| items_hash.keys}.flatten

  items_array.each do |item|
    item_count = items_array.count(item)

    cart.each do |items_hash|
      items_hash.each do |key, value|

        item_values = {}
          if item == key
            value[:count] = item_count
            item_values = value

            consolidated_cart[item] = item_values
            break       #breaks after first instance of item because all values for that item remain the same
          end
        end
    end
  end

  consolidated_cart
end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
