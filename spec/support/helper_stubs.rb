module HelperStubs
  def sign_in_as_admin
    @request.env['devise.mapping'] = Devise.mappings[:user]
    sign_in create(:admin)
  end
end
