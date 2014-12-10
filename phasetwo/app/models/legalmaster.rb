class Legalmaster < ActiveRecord::Base
	validates :lmname, presence: true, uniqueness: true, length: { minimum: 3 }
	validates :lmdesc, presence: true
	has_many :legaldescriptions

end
