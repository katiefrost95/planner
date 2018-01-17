require_relative 'pages/homepage'
require_relative 'pages/signing_in'
require_relative 'pages/dashboard'
require_relative 'pages/tutorials_page'

module CodebarSite

  def homepage_page
    HomePage.new
  end

  def tutorials_page
    TutorialsPage.new
  end

  def sign_in_page
    SignIn.new
  end

  def dashboard
    Dashboard.new
  end

end
