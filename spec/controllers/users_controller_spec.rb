require 'spec_helper'

describe UsersController do
  describe "#new" do
    before { get :new }

    it "should assign @user" do
      assigns(:user).should_not be_nil
      assigns(:user).class.should be User
    end

    it "should respond successfully" do
      response.should be_success
    end
  end

  describe "#create" do
    context "with valid params" do
      let(:new_user) { attributes_for :user }

      it "should redirect to root_path" do
        post :create, user: new_user
        response.should be_redirect
      end
    end

    context "with invalid params" do
      it "should render :new" do
        post :create, user: { email: nil }
        response.should render_template :new
      end
    end
  end
end
