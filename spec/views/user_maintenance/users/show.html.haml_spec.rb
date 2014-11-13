require 'rails_helper'

RSpec.describe "user_maintenance/users/show", :type => :view do
  before(:each) do
    @user = create(:user)
  end

  it "renders attributes in the page" do
    render
  end
end
