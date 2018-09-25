require 'rails_helper'

RSpec.describe User, :type => :model do
  subject { described_class.new(password: "some_password") }

  describe "Validations" do
    it "is not valid without a country" do
      subject.country = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a password" do
      subject.password = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a avatar" do
      subject.avatar = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a newsletter" do
      subject.newsletter = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without an email" do
      subject.email = nil
      expect(subject).to_not be_valid
    end
  end
end