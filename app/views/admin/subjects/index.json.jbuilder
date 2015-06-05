json.array!(@admin_subjects) do |admin_subject|
  json.extract! admin_subject, :id, :subject_name
  json.url admin_subject_url(admin_subject, format: :json)
end
