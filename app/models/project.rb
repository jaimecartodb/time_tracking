class Project < ActiveRecord::Base

	validates :name, presence: true
	validates :name, uniqueness: true
	validates :name, length: {maximum: 30}
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

	def total_hours_in_month(month, year)
		total_hours(entries_in_month(month, year)
	end


	def self.total_hours_in_month
		entries_to_search = filtered_entries	
		hours = entries_to_search.sum(:hours)
		minutes = entries_to_search.sum(:minutes)
		hours += minutes / 60
	end

	def entries_in_month(month, year)
		date = Date.new(year, month)
		self.entires.where(date: date.all_month)
	end
end
