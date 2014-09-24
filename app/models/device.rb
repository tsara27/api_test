class Device < ActiveRecord::Base
	def self.get_os(dob)
		if dob % 3 == 0 && dob % 2 == 0
			self.pluck(:os).first
		elsif dob % 3 == 0
			self.pluck(:os)[2]
		elsif dob % 2 == 0
			self.pluck(:os)[1]
		else
			self.pluck(:os).last
		end		
	end
end
