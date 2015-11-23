json.array!(@reports) do |report|
  json.extract! report, :id, :name, :email, :phone, :feed_type, :subject, :description
  json.url report_url(report, format: :json)
end
