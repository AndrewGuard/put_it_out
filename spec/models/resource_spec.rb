require 'spec_helper'

	describe Resource do
	let (:resource) {Resource.new}

	it { should ensure_length_of(:title).is_at_least(5) }
	it { should validate_presence_of(:title) }
	it { should validate_presence_of(:link) }
	it { should validate_presence_of(:description) }
	it { should ensure_length_of(:description).is_at_least(10) }
	it { should_not allow_value("get.get").for(:link) }
	it { should allow_value("http://google.com").for(:link) }

context '.attr_accessible' do
	let(:resource) {Resource.new}
	subject {:link}
	it {should_not be_accessible :bar}
	it {should be_accessible :link}
end
end