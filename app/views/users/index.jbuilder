# app/views/users/index.jbuilder
json.array! @users do |user|
  json.id user.id
  json.name user.name
  json.created_at user.created_at
end