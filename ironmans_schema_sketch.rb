# Schema for Rails-based fitness tracking web app
#
# Stephen Torrence
#
#

# for duration attributes
# http://rubydoc.info/gems/richunits/0.6.2/frames
require 'RichUnits'

class Workout
	has_many :exercises

	type: string
end

class Exercise < Workout
	has_many :sets

	type: string		# 'Bench press', 'Cleans'
end

class Set < Exercise
	reps: integer		# count, '10'
	duration: integer 	# in seconds, '3500'
end