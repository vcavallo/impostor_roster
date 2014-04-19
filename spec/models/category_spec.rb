require 'spec_helper'

describe Category do

  let(:category) { FactoryGirl.build(:ruby_category) }

  describe "#name" do
    it { should respond_to(:name) }

    context "when it is 3 characters long" do
      it "is valid" do
        category.name = "a" * 3
        expect(category).to be_valid
      end
    end

    context "when it is 2 characters long" do
      it "is invalid" do
        category.name = "a" * 2
        expect(category).to be_invalid
      end
    end

    context "when it is blank" do
      it "is invalid" do
        category.name = nil
        expect(category).to be_invalid
      end
    end
  end

end
