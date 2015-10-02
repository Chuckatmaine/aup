json.array!(@aupforms) do |aupform|
  json.extract! aupform, :id, :userid, :aupaccept, :acceptdate
  json.url aupform_url(aupform, format: :json)
end
