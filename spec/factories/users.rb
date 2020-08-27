FactoryBot.define do
  factory :user do
    name {Faker::Name.last_name}
    email {Faker::Internet.free_email}
    password = Faker::Internet.password(min_length: 6)
    password {password}
    password_confirmation {password}
    firstname { "山田" }
    lastname { "太郎" }
    firstnamekana { "ヤマダ" }
    lastnamaekana { "タロウ" }
    birth {Faker::Date.between(from: '1930-1-1', to: '2015-12-31')}
  end
end