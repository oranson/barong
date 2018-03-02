# frozen_string_literal: true

RSpec.configure do |config|
  config.include Devise::Test::ControllerHelpers, type: :controller
end

def sign_in(account, params = {})
  visit index_path
  fill_in 'account_email',    with: params[:email] || account.email
  click_on 'Submit'
  fill_in 'account_password', with: params[:password] || account.password
  click_on 'Submit'
end
