json.array! @messages do |message|
  json.content message.content
  json.image message.image
  json.time message_time(message)
  json.user_name message.user.name
  json.id message.id
end