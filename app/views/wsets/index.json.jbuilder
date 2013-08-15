json.array!(@wsets) do |wset|
  json.extract! wset, :reps, :duration
  json.url wset_url(wset, format: :json)
end
