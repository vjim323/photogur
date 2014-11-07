class Picture < ActiveRecord::Base
	scope :newest_first, -> { order("created_at DESC") }
	scope :most_recent_five, -> { newest_first.limit(5) }
	# scope :older_than_one_month, -> (today) { find_by("created_at < ?", today)}

	def self.created_before(time)
		where("created_at < ?", time)
	end
	# scope :created_before, -> (time) { where("created_at < ?", time) }
end
