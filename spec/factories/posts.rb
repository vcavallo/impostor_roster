FactoryGirl.define do
  factory :post do
    factory :ruby_post do
      category_id 1
      months_experience 6
      inability "Testing"
    end

    factory :medical_post do
      category_id 2
      months_experience 3
      inability "Pulse reading"
    end
  end
end
