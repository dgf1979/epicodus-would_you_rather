json.array!(@choices) do |choice|
  json.extract! choice, :id, :option_a, :option_b, :option_a_votes, :option_b_votes
  json.url choice_url(choice, format: :json)
end
