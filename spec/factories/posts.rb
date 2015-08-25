FactoryGirl.define do
  factory :post do
    caption "nofilter"
    image Rack::Test::UploadFile.new(Rails.root + 'spec/files/images/coffee.jpg', 'image/jpg')
  end
end
