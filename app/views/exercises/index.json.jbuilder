json.array!(@exercises) do |exercise|
  json.extract! exercise, :type
  json.url exercise_url(exercise, format: :json)
end
