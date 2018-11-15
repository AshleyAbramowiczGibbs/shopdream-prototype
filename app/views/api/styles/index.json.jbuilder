json.array! @styles.each do |style|
  json.partial! "style.json.jbuilder", style: style
end