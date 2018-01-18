require_relative 'pages/homepage'
require_relative 'pages/signing_in'
require_relative 'pages/dashboard'
require_relative 'pages/tutorials_page'
require_relative 'pages/new_member_signin'
require_relative 'pages/menu_bar'
require_relative 'pages/update_details_page'
require_relative 'pages/github_logout'
require_relative 'pages/nav_bar'
require_relative 'pages/subscription'
require_relative 'pages/invitations'

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

  def new_member_page
    NewMember.new
  end

  def menu_bar
    MenuBar.new
  end

  def profile
    Profile.new
  end

  def github_logout
    GithubLogout.new
  end

  def invitations
    Invitations.new
  end

  def nav_bar
    NavBar.new
  end

  def subscription_page
    SubscriptionPage.new
  end

  def update_details
    UpdateDetails.new
  end
  

end
