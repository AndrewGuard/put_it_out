require 'spec_helper'


describe User do
	let (:new_user) {User.new(name: "ty", email: "ty@gmail.com", password: "password", username: "ty")}
	
	it { should validate_presence_of(:name) }
	it { should validate_uniqueness_of(:username) }
	it { should validate_uniqueness_of(:email) }
	it { should allow_value("ty@gmail.com").for(:email) }
	it { should_not allow_value("1@2.museums").for(:email) }
	it { should validate_presence_of(:password) }
	it { should validate_presence_of(:username) }
	it { should have_secure_password }
			
	end

