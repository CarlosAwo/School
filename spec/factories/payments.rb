FactoryBot.define do
  factory :payment do
    command { nil }
    amount { 1.5 }
    status { 1 }
    reference { "MyString" }
  end
end
