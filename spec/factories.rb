FactoryGirl.define do


	factory :user do |f|
	f.name "foo"
	f.email "foo@bar.com"
	f.username "foobar"
	f.password "password"
	f.admin "true"
	end


end
