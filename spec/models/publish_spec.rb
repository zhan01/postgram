require 'rails_helper'

describe User do
  it "should have many publishes" do
    t = User.reflect_on_association(:publishes)
    expect(t.macro).to eq(:has_many)
  end
end

describe User do
  it "should have many conversations" do
    t = User.reflect_on_association(:conversations)
    expect(t.macro).to eq(:has_many)
  end
end

RSpec.describe Publish, type: :model do
	before(:all) do
		@publish = Publish.new(description:"My description",country:"My country")
	it "should have a matching description" do
		expect(@publish.description).to eq("My description")
	end
end
end