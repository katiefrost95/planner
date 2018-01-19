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

  def click_attend_workshop
    click_link('Attend')
  end

  def find_response_message
    page.body
  end

  def click_attending
    click_link("Attending")
  end

  def find_cannot_attend
    find_link("I can no longer attend").visible?
  end

  def click_manage_invitation_button
    click_link("Manage your invitation")
  end

end
