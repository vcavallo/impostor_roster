require 'spec_helper'

describe Post do

  let(:post) { FactoryGirl.build(:first_post) }

  describe "Factory" do
    it "is valid" do
      expect(post).to be_valid
    end
  end
  
  describe "#field" do
    it { should respond_to(:field) }
  
    context "when it is 3 characters long" do
      it "is valid" do
        post.field = "a" * 3
        expect(post).to be_valid
      end
    end

    context "when it is 2 characters long" do
      it "is invalid" do
        post.field = "a" * 2
        expect(post).to be_invalid
      end
    end

    context "when field is blank" do
      it "is invalid" do
        post.field = nil
        expect(post).to be_invalid
      end
    end

  end



  it "should have a field" do
    post.field = nil
    expect(post).to be_invalid
  end

  it "should have months of experience" do
   expect(post).to respond_to(:months_experience)
  end

  it "should have an inability" do
    expect(post).to respond_to(:inability)
  end

  describe "#field" do
    it "should not be an empty string" do
      post.field = ""
      expect(post).to be_invalid
    end

    it "should be a string" do
      expect(post.field).to be_a(String)
    end
  end

  describe "#months_experience" do
    it "should not be blank" do
      post.months_experience = nil
      expect(post).to be_valid
    end

    it "should be an integer" do
      expect(post.months_experience).to be_a(Integer)
    end
  end

  describe "#inability" do
    it "should not be blank" do
      expect(post.inability).to_not be(nil)
      expect(post.inability).to_not be("")
    end

    it "should be a string" do
      expect(post.inability).to be_a(String)
    end
  end

end
