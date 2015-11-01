json.array!(@answers) do |answer|
  json.extract! answer, :id, :option1, :option2, :option3, :piiza_id_id
  json.url answer_url(answer, format: :json)
end
