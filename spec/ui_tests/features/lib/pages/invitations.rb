require 'capybara/dsl'

class Invitations
  include Capybara::DSL

  UPCOMING_WORKSHOPS="Upcoming workshops"

  def upcoming_workshops
    find_link("Upcoming").visible?
  end

  def attended_workshops
    find_link("Attended").visible?
  end

  def click_rsvp
    find_link("RSVP").click
  end

  def click_get_ticket
    find_link("Get your ticket").click
  end

end
