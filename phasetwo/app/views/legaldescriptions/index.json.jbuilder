json.array!(@legaldescriptions) do |legaldescription|
  json.extract! legaldescription, :id, :ldescription, :ldesc_createdby, :ldesc_modifiedby
  json.url legaldescription_url(legaldescription, format: :json)
end
