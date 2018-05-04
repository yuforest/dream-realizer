json.array!(@long_targets) do |long_target|
  json.extract! long_target, :id
  json.title long_target.target
  json.start long_target.start.to_date()
  json.end long_target.end.to_date()
  json.url long_target_url(long_target, format: :html)
  json.allDay true
  json.color "orange"
end


json.array!(@medium_targets) do |medium_target|
  
    json.extract! medium_target, :id
    json.title medium_target.target
    json.start medium_target.start.to_date()
    json.end medium_target.end.to_date()
    json.url medium_target_url(medium_target, format: :html)
    json.allDay true
end