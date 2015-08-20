json.array!(@prototypes) do |prototype|
  json.extract! prototype, :id, :title, :introduction, :genre, :user_id, :github, :url
  json.url prototype_url(prototype, format: :json)
end
