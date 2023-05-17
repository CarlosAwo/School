FactoryBot.define do
  factory :partial_payment do
    amount { 1.5 }
    rest { 1.5 }
    reference { "MyString" }
    payment { nil }
  end
end
