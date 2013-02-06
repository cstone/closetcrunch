require 'spec_helper'

describe PagesController do
  describe "#show" do

    it "returns http success" do
      get :show, id: :show
      response.should be_success
    end
  end
end
