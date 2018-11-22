json.array! @potential_purchases.each do |potential_purchase|
  json.partial! "potential_purchase.json.jbuilder", potential_purchase: potential_purchase
end