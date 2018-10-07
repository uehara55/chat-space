FactoryGirl.define do
  factory :message do
    content Faker::Lorem.sentence
    image Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/yamazaki.png'))
    user
    group
  end
end
