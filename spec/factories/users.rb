FactoryBot.define do
  factory :user do
    add_attribute(:email) { "user@example.com" }
    add_attribute(:password_digest) { "48q9023jfaslj2" }
    add_attribute(:first_name) { "User" }
    add_attribute(:last_name) { "example" }
    add_attribute(:role) { 1 }
  end
end

