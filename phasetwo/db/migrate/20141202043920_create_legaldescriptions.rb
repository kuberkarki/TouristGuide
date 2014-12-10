class CreateLegaldescriptions < ActiveRecord::Migration
  def change
    create_table :legaldescriptions do |t|
      t.text :ldescription
      t.integer :ldesc_createdby
      t.integer :ldesc_modifiedby
      t.belongs_to :legalmaster
      t.belongs_to :legalcountry

      t.timestamps
    end
  end
end
