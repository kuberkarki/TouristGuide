class Legaldescription < ActiveRecord::Base
	validates :ldesc_createdby, presence: true
	validates :ldesc_modifiedby, presence: true
	belongs_to :legalmaster
	belongs_to :legalcountry
	validates :ldescription, presence: true
	# accepts_nested_attributes_for :legalcountry,
	# :reject_if => :all_blank
end
