class CreateSecondaries < ActiveRecord::Migration
  def change
    create_table :secondaries do |t|
      t.string :name
      t.text :description
      t.integer :height
      t.integer :width
      t.integer :depth
      t.integer :distance_from
      t.integer :distance_end
      t.belongs_to :master

      t.timestamps
    end
  end
end
