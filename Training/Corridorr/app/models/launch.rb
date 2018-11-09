class Launch < ApplicationRecord
	 attr_accessor :Request_for, :from, :to, :Reason

	 belongs_to :user
	LAUNCH_LIST = ["work from home","Maternity leave","Adoption leave", "other"]
end
