require 'capybara/dsl'

class GithubLogout

  include Capybara::DSL

  GITHUB_HOMEPAGE = 'https://github.com/'
  PROFILE_DROPDOWN = 'user-links'
  AUTHORIZE_BUTTON_ID = 'js-oauth-authorize-btn'


  def visit_github
    visit(GITHUB_HOMEPAGE)
  end

  def click_dropdown_profile
    find('summary[aria-label="View profile and more"]').click
  end

  def click_logout
    click_button("Sign out")
  end



end
