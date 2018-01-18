require 'capybara/dsl'

class GithubLogout

  include Capybara::DSL

  GITHUB_HOMEPAGE = 'https://github.com/'
  PROFILE_DROPDOWN = 'user-links'


  def visit_github
    visit(GITHUB_HOMEPAGE)
  end

  def click_dropdown_profile
    # find(:id, PROFILE_DROPDOWN).click
    # find(:xpath, "//img[@class='avatar']/@src").click
    find(:css, "avatar.float-left.mr-1").click
  end

  def click_logout
    find("Sign out").click
    sleep 2
  end



end
