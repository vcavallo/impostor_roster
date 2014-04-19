require 'spec_helper'

describe Post do

  let(:post) { FactoryGirl.build(:ruby_post) }

  describe "Factory" do
    it "is valid" do
      expect(post).to be_valid
    end
  end


  describe "#months_experience" do
    it { should respond_to(:months_experience) }

    context "when it is at least 1" do
      it "is valid" do
        post.months_experience = 2
        expect(post).to be_valid
      end
    end

    context "when it is blank" do
      it "is invalid" do
        post.months_experience = nil
        expect(post).to be_invalid
      end
    end

    context "when it is zero" do
      it "is invalid" do
        post.months_experience = 0
        expect(post).to be_invalid
      end
    end

    context "when it is a string" do
      it "is invalid" do
        post.months_experience = "a string"
        expect(post).to be_invalid
      end
    end
  end

  describe "#inability" do
    it { should respond_to(:inability) }

    context "when it is at least 1 character long" do
      it "is valid" do
        post.inability = "C"
        expect(post).to be_valid
      end
    end

    context "when it is blank" do
      it "is invalid" do
        post.inability = nil
        expect(post).to be_invalid
      end
    end
  end
end
