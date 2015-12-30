class Project < ActiveRecord::Base
	has_many :entries

	def self.iron_find(id)
		self.where(id: id).first
	end

	def iron_print
		"project: #{name} - "
	end

	def self.clean_old
		date = Time.now.midnight -1.week
		project = where("created_at < ?", date)
		projects.destroy_all
	end

end
