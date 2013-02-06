require 'spec_helper'

describe Page do
  it { should validate_presence_of :title }
  it { should validate_uniqueness_of :title }
  it { should validate_presence_of :slug }
  it { should validate_uniqueness_of :slug }
  it { should validate_presence_of :content }

  describe "#to_param" do
    subject { create :page }
    it "should return the slug" do
      subject.to_param.should eq 'about-us'
    end
  end
end
