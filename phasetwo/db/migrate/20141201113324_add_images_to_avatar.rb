class AddImagesToAvatar < ActiveRecord::Migration
  def change
  	add_column :images, :avatar1, :string
  end
end
