FactoryBot.define do
    factory :user do
      email { "email@gmail.com" }
      password { "password"} 
      password_confirmation { "password" }
    end
end