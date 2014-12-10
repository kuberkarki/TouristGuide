class Legalcountry < ActiveRecord::Base
	validates :countryname, presence: true
	validates :countrypostalcode, presence: true
	validates :countrycallingcode, presence: true
	validates :country_createdby, presence: true
	validates :country_modifiedby, presence: true
	has_many :legaldescriptions
	# accepts_nested_attributes_for :legaldescriptions,
	# :reject_if => :all_blank,
	# :allow_destroy => true
end
