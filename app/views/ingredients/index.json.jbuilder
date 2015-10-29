json.array!(@ingredients) do |ingredient|
  json.extract! ingredient, :id, :vegetarian, :salty, :sweet
  json.url ingredient_url(ingredient, format: :json)
end
