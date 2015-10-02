json.array!(@users) do |user|
  json.extract! user, :id, :email, :aupaccepted
  json.url user_url(user, format: :json)
end
