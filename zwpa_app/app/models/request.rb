class Request < ActiveRecord::Base
	# Relationships
	belongs_to :customer
	has_many :walkthroughs
	has_many :notes
	has_many :audits

	# Validations
	validates_presence_of :customer_id, :date
	validates_format_of :phone, with: /\A(\d{10}|\(?\d{3}\)?[-. ]\d{3}[-.]\d{4})\z/, message: "should be 10 digits (area code needed) and delimited with dashes only"
  	validates_format_of :email, with: /\A[\w]([^@\s,;]+)@(([\w-]+\.)+(com|edu|org|net|gov|mil|biz|info))\z/i, message: "is not a valid format"
  	validates :zip_code, format: { with: /\A\d{5}\z/, message: "should be five digits long", allow_blank: true }


	#scopes
	scope :chronological, -> { order('created_at') }

	# CHECK FOR CORRECTNESS
	scope :by_customer, -> { joins(:customer).order('customers.company_name') }

end
