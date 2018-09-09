FactoryBot.define do
  factory :review do
    association :author, factory: :user
    association :book, factory: :book
    rating { Faker::Number.decimal(1, 2) }
  end
end