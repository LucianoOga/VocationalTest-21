class Career < Sequel::Model

	one_to_many :surveys
    one_to_many :outcomes
    def validate
		super errors.add(:name => 'username can not be nil or empty') if name.nil? || name.empty?
	end

end