FactoryBot.define do
    factory :user do
        
        password  { "test1234" }
        email { 'test@test.com' }
    end
end