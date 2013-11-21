require 'spec_helper'

	describe Resource do
	let (:resource) {Resource.new}

	context "when title is empty" do
		it "should not be valid" do
			expect(user.valid?).to be_false
		end

		it "should not save" do
			expect(resource.save).to be_false
		end
	end

	context "when url is invalid" do
		let (:resource) {Resource.new(:link => hte.get)}

			it "should not save" do
				expect(resource.save).to be_false
			end
	end
end
