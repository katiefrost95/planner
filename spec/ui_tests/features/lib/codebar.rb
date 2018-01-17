require_relative 'pages/homepage'
require_relative 'pages/signing_in'
require_relative 'pages/dashboard'

module CodebarSite

  def homepage_page
    HomePage.new
  end

  def sign_in_page
    SignIn.new
  end

  def dashboard
    Dashboard.new
  end

end
