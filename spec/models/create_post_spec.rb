require 'spec_helper'

describe Post do

  let(:post) { FactoryGirl.build(:first_post) }

  it "should have a field" do
    # pending "need to add field attribute"
    expect(post).to respond_to(:field)
  end

  it "should have months of experience" do
    pending "need to add months experience attribute"
  end

  it "should have inability" do
    pending "need to add inability attribute"
  end

end
