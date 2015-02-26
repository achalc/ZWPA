# Refer to lab 13 from 272 for basic tutorials on how to use authentication.
# These requirements are very involved, and should probably be saved more
# for the end of the project.


class User < ActiveRecord::Base
	
	# Adds method to set and authenticate against a Bcrypt password
	# Uncomment this line later.
	# has_secure_password

	# Relationships
	has_many :customers


	# Validations
	validates_presence_of :username
	validates_presence_of :password

	# Scopes


	# Methods

	# Used for user authentication via email.
	# May have to changed based on future client needs.
	# Uncomment when working on authentication later.
	# def self.authenticate(email,password)
	# 	find_by_email(email).try(:authenticate, password)
	# end

	#reset password - TO DO LATERr
end
