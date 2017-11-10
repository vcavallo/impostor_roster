FactoryGirl.define do
  factory :post do
    factory :ruby_post do
      association :category, factory: :ruby_category
      months_experience 6
      inability "Testing"
    end

    factory :medical_post do
      association :category, factory: :medical_category
      months_experience 3
      inability "Pulse reading"
    end
  end
end
