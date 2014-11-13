require 'rails_helper'
include UserMaintenance::Engine.routes.url_helpers

RSpec.describe "user_maintenance/users/new", :type => :view do
  before(:each) do
    sign_in_as_admin
    assign(:user, UserMaintenance::User.new())
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do
    end
  end
end
