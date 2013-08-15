json.array!(@fsets) do |fset|
  json.extract! fset, :reps, :duration
  json.url fset_url(fset, format: :json)
end
