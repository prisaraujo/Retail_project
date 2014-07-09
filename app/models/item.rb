class Item < ActiveRecord::Base
	validates :name, presence: true
	validates :city, presence: true
	validates :followup_status, presence: true
end
