json.array!(@legalcountries) do |legalcountry|
  json.extract! legalcountry, :id, :countryname, :countrypostalcode, :countrycallingcode, :country_createdby, :country_modifiedby
  json.url legalcountry_url(legalcountry, format: :json)
end
