class Request < ActiveRecord::Base
	# Relationships
	belongs_to :customer
	has_many :walkthroughs, :notes, :audits

	# Validations
	validates_presence_of :customer_id
	validates_format_of :phone, with: /\A(\d{10}|\(?\d{3}\)?[-. ]\d{3}[-.]\d{4})\z/, message: "should be 10 digits (area code needed) and delimited with dashes only"
  	validates_format_of :email, with: /\A[\w]([^@\s,;]+)@(([\w-]+\.)+(com|edu|org|net|gov|mil|biz|info))\z/i, message: "is not a valid format"


	#scopes
	scope :chronological, -> { order('created_at') }
	scope :by_customer, ->

end
