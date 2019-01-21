class event
	attr_accessor :start_date, :length, :title, :attendees,
@array = []
	def initialize(start_date, lenght, title, attendees)
		@start_date = Time.parse
		@lenght = @length.to_i
		@title = title
		@array << attendees
	end

	def postpone_24h
		@start_date = @start_date + 60 * 60 * 24
	end

	def end_date
		@start_date + length * 60
	end

	def is_past 
		if @start_date < Time.now
			return true
		else 
			return false
	end

	def is_future
    !self.is_past
  end

  def is_soon
  	if @start_date <= Time.now + 30*60
  		return true
  	else
  		return false
  end
end

def to_s
	puts "Titre : #{title}"
	puts "Date de début : #{start_date}"
	puts "Durée : #{length} minutes"
	puts "Invités : #{@array}"
end