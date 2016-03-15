require 'rails_helper'

describe Furnishing do

  subject { FactoryGirl.create(:furnishing) }

  context "Furnishing#img" do

    it "should extract the first image" do
      subject.img.should eq("image1.jpg")
    end

    it "should return a missing image if furnishings.imgs is nil" do
      subject.imgs = nil
      subject.img.should eq("missing-image.jpg")
    end

    it "should return a missing image if furnishings.imgs is empty" do
      subject.imgs = 'only-one-image.jpg'
      subject.img.should eq("only-one-image.jpg")
    end

  end

end
