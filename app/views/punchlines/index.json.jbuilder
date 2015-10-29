json.array!(@punchlines) do |punchline|
  json.extract! punchline, :id, :name
  json.url punchline_url(punchline, format: :json)
end
