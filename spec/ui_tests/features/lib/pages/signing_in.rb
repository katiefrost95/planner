require 'capybara/dsl'

class SignIn
  include Capybara::DSL

  GITHUB_USERNAME = "login_field"
  GITHUB_PASSWORD = "password"


  def github_username(username)
    fill_in(GITHUB_USERNAME, with: username)
  end

  def github_password(password)
    fill_in(GITHUB_PASSWORD, with: password)
  end

  def click_sign_in_button
    click_button("Sign in")
  end

  def click_authorize_button
    click_button("1")
  end

end