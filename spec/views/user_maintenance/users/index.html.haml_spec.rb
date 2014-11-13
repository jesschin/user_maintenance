require 'rails_helper'

RSpec.describe "user_maintenance/users/index", :type => :view do
  before(:each) do

    assign(:users, [
      create(:admin),
      create(:user)
    ])
  end

  it "renders a list of users" do
    render
  end
end
