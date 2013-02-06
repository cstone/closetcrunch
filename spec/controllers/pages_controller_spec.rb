require 'spec_helper'

describe PagesController do
  describe "#show" do
    context "with a published slug" do
      it "returns http success" do
        create :published_page
        get :show, id: "about-us"
        response.should be_success
      end
    end

    context "with an unpublished slug" do
      it "returns 404" do
        lambda { get :show, id: :unknown }.should raise_error ActionController::RoutingError
      end
    end
  end
end
