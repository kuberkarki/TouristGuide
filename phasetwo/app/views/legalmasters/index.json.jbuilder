json.array!(@legalmasters) do |legalmaster|
  json.extract! legalmaster, :id, :lmname, :lmdesc, :lmcreatedby, :lmmodifiedby
  json.url legalmaster_url(legalmaster, format: :json)
end
