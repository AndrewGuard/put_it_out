FactoryGirl.define do


	factory :user do |f|
		f.sequence(:name) { |n| "alexandasr#{n}"}
		f.sequence(:email) { |n| "fakewqweefg#{n}@faker.com"}
		f.sequence(:username) { |n| "fakeqwqrdowwf#{n}" }
		f.password "password"
		f.admin "true"
	end
end
