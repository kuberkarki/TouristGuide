# require 'elasticsearch/model'

class Secondary < ActiveRecord::Base

	## For Advancd Search
	# include Elasticsearch::Model
 	#include Elasticsearch::Model::Callbacks

	has_many :descriptions
	belongs_to :master

	scope :secondary_name_search, -> (query) { where("name like ?", "%#{query}%") }
	scope :secondary_des_search, -> (query) { where("description like ?", "%#{query}%") }

end
