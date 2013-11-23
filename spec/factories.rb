FactoryGirl.define do


	factory :user do |f|
		f.sequence(:name) { |n| "alexandasgr#{n}"}
		f.sequence(:email) { |n| "fakewqweefw#{n}@faker.com"}
		f.sequence(:username) { |n| "fakeqwqrdowefwf#{n}" }
		f.password "password"
		f.admin "true"
	end
end
