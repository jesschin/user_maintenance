require 'rails_helper'

module UserMaintenance
  RSpec.describe User, :type => :model do
    it 'has a valid factory' do
      expect(create(:user)).to be_valid
    end

    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:roles_mask) }

    it "returns the user's full name as a string" do
      user = create(:user, :first_name => 'John', :last_name => 'Doe')
      expect(user.full_name).to be_eql 'John Doe'
    end
  end
end
