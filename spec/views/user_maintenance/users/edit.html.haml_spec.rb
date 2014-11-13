require 'rails_helper'
include UserMaintenance::Engine.routes.url_helpers

RSpec.describe "user_maintenance/users/edit", :type => :view do
  before(:each) do
    sign_in_as_admin
    @user = assign(:user, create(:user))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do
    end
  end
end
