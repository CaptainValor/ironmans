class Exercise < ActiveRecord::Base
	has_many :wsets
	belongs_to :workout
end
