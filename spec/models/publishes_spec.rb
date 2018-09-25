RSpec.describe Publish, type: :model do
	before(:all) do
		@publish = Publish.new(description:"My description",country:"My country")
	it "should have a matching description" do
		expect(@publish.description).to eq("My description")
	end
end
end