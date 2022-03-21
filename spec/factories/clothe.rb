FactoryBot.define do
  factory :clothe do
    memo             {'test'}
    date              {'1月'}
    season             {'春'}
    color             {'白'}
   
    after(:build) do |clothe|
      clothe.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end