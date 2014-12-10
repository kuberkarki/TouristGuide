require 'carrierwave/orm/activerecord'

class Image < ActiveRecord::Base
	validates :name, presence: true
	belongs_to :description
	mount_uploader :avatar, AvatarUploader
	mount_uploader :avatar1, AvatarUploader



end
