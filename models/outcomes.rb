class Outcome < Sequel::Model
	many_to_one :career
	many_to_one :choice
	
	def validate
		super
		errors.add(:career_id,:name => 'Can not be nil') if (career_id.nil?) || (not (career_id))
		errors.add(:choice_id,:name => 'Can not be nil') if (choice_id.nil?) || (not (choice_id))
	end
end