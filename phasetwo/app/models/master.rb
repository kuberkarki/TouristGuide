# require 'elasticsearch/model'

class Master < ActiveRecord::Base

	validates :name, presence: true, uniqueness: true
	validates :description, presence: true
	has_many :secondaries

	scope :master_name_search, -> (query) { where("name like ?", "%#{query}%" ) }
	scope :master_des_serach, -> (query) { where("description like ?", "%#{query}%") }
end
