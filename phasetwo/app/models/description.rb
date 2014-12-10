class Description < ActiveRecord::Base
	validates :description, presence: true
	has_many :images
	belongs_to :secondary
end
