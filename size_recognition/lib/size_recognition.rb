class MeasurementsRecorder
	attr_accessor :chest, :waist, :hip, :inside_leg, :shoe_size

	def measurements
      @measurements ||= {}
	end

	def save_measurements
	  @measurements = {:chest => chest , :waist => waist , :hip => hip , :inside_leg => inside_leg , :shoe_size => shoe_size}
	end

	def save_msmts
		file = File.open("msmts.csv", "w")
		measurements.each do |m|
	    	m_data = [m[:chest], m[:waist], m[:hip], m[:inside_leg], m[:shoe_size]]
	    	csv_line = m_data.join(",")
	    	file.puts csv_line
	  	end
	  	file.close
	end

	def to_cm(measurement)
		measurement * 2.54
	end


	def uk_to_us(shoe_size)
		shoe_size + 1
	end

	def return_measurements
		measurements.each do |key, value|
			print "Your #{key} size is #{value}" if value 
		end
	end

	def get_chest_size
		self.chest = gets.chomp.to_i
	end


end

	# mr = MeasurementsRecorder.new

	# puts "Enter chest measurement"
	# mr.chest = gets.chomp
	# puts "Enter waist measurement"
	# mr.waist = gets.chomp


# m = Measurements.create {user: => current_user, chest: => 12, waist: 23}
# m.save!


# m = Measurements.find_by_user current_user

# m.chest
	# puts "Enter hip measurement"
	# mr.hip = gets.chomp
	# puts "Enter inside leg measurent"
	# mr.inside_leg = gets.chomp

	# mr.store_chest_msmts(nil)
	# mr.save_msmts


# def size_recognition(number)
# 	return number
# end

# def error_message
# 	if number.is_a? Integer == true
# 		return number
# 	else 
# 		return "Please enter a number"
# end
# end


