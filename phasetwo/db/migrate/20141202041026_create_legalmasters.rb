class CreateLegalmasters < ActiveRecord::Migration
  def change
    create_table :legalmasters do |t|
      t.string :lmname, limit: 50
      t.text :lmdesc
      t.integer :lmcreatedby
      t.integer :lmmodifiedby

      t.timestamps
    end
  end
end
