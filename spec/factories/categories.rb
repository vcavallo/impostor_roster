FactoryGirl.define do
  factory :category do
    factory :ruby_category do
      name "Ruby"
    end

    factory :medical_category do
      name "Medicine"
    end
  end
end
