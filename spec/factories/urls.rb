FactoryGirl.define do
  factory :url do
    full_url 'www.mygreatbiglongurl/blah/blah/something'
    http_status 301
    clicks 0
  end
end
