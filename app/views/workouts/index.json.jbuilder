json.array!(@workouts) do |workout|
  json.extract! workout, :type
  json.url workout_url(workout, format: :json)
end
