class Audit < ActiveRecord::Base
	# Relationships
	belongs_to :request
	has_many :wastes

	accepts_nested_attributes_for :wastes, reject_if: lambda { |waste| waste[:material_type].blank? }

	#Validations
	validates_presence_of :request_id, :date, :generator, :location
	validates_inclusion_of :generator, in: %w[Trash Recycle Compost]
	
	#Need to validate that generator is within accepted values...

	#Scope
	scope :chronological, -> { order('created_at') }
	


end
