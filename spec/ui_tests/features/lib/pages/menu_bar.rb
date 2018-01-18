require 'capybara/dsl'

class MenuBar
  include Capybara::DSL

  def menu_dashboard
    find_link("My Dashboard").click
  end

  def menu_subscriptions
    find_link("Manage subscriptions").click
  end

  def menu_profile
    find_link("My Profile").click
  end

  def menu_invitations
    find_link("Invitations").click
  end

  def menu_details
    find_link("Update your details").click
  end

end
