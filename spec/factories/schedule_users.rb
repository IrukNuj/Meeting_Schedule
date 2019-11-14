FactoryBot.define do
  factory :schedule_user do
    user { nil }
    schedule { nil }
    status { 1 }
    reason { "MyText" }
  end
end
