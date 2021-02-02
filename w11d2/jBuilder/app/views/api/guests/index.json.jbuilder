json.array! @guests do |guest|
  json.name guest.name

end

# json.array! @gifts do |gift|
#   if gift.guest_id === guest.id 
#     json.title gift.title 
#   end
# end