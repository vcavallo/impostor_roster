require 'spec_helper'

describe Category do

  let(:category) { FactoryGirl.build(:ruby_category) }

  describe "has a #name" do
    it { should respond_to(:name) }

    describe "validtions" do
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

      context "when it has spaces" do
        it "is valid" do
          category.name = "C C C"
          expect(category).to be_valid
        end
      end

      context "when it is blank" do
        it "is invalid" do
          category.name = nil
          expect(category).to be_invalid
        end
      end

      context "when it has punction" do
        it "is invalid" do
          category.name = "'DROP TABLE='"
          expect(category).to be_invalid
        end
      end
    end
  end

  describe "has a human-friendly #slug" do
    it { should respond_to(:name) }
  end

  describe "associations" do

    it "has many posts" do
      post = FactoryGirl.create(:ruby_post, category: category)
      expect(category.posts).not_to be_empty
    end
  end

end
