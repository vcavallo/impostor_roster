FactoryGirl.define do
  factory :category do
    factory :ruby_category do
      id 1
      name "Ruby"
    end

    factory :medical_category do
      id 2
      name "Medicine"
    end
  end
end
