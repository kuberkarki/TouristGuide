class CreateLegalcountries < ActiveRecord::Migration
  def change
    create_table :legalcountries do |t|
      t.string :countryname
      t.string :countrypostalcode
      t.string :countrycallingcode
      t.integer :country_createdby
      t.integer :country_modifiedby

      t.timestamps
    end
  end
end
