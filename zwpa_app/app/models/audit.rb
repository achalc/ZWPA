class Audit < ActiveRecord::Base
	# Relationships
	belongs_to :request
	has_many :wastes

	#Validations
	validates_presence_of :request_id, :date, :generator, :location
	
	#Need to validate that generator is within accepted values...

	#Scope
	scope :chronological, -> { order('created_at') }
	scope :alphabetical, -> { order('family_name') }


end
