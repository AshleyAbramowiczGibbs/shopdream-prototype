#App doesn't need an index.json.jbuilder for item_tags because we never need to show all the item_tags

json.array! @item_tags.each do |itemTag|
  json.partial! "item_tag.json.jbuilder", item_tag: itemTag
end

