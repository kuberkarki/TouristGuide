class CreateDescriptions < ActiveRecord::Migration
  def change
    create_table :descriptions do |t|
      t.text :description
      t.belongs_to :secondary

      t.timestamps
    end
  end
end
