json.array!(@names) do |name|
  json.extract! name, :id, :name
  json.url name_url(name, format: :json)
end
