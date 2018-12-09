json.id style.id
json.image_url style.image_url
json.email style.user.email
json.item_tags style.item_tags
json.image rails_blob_url(style.image) if style.image.attachment