json.array!(@piiza_ids) do |piiza_id|
  json.extract! piiza_id, :id, :name, :number
  json.url piiza_id_url(piiza_id, format: :json)
end
