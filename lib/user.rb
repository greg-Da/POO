class User
	attr_accessor :email, :name,
	@@array = []

	def initialize(user_email)
		@email = user_email
		@@array  << self
	end

	def self.all
		return @@array
	end

  def self.find_by_email(email)
  	@@array.each do |user|
  		return user if user.email == email
  	end
  	return "pas de participant trouvé avec cet email"
  end
end