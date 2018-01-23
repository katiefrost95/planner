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

  def find_rsvp_button
    find_link("RSVP").visible?
  end

  def check_find_rsvp_button
    if find_rsvp_button == true
      return true
    end
    return false
  end

  def click_rsvp
    find_link("RSVP").click
  end

  def click_get_ticket
    find_link("Get your ticket").click
  end

  def click_attend
    click_link('Attend')
  end

  def find_response_message
    page.body
  end

  def check_find_attending_button
    if find_link("Attending").text == "Attending"
      return true
    end
    return false
  end

  def click_attending
    click_link("Attending")
  end

  def find_cannot_attend
    find_link("I can no longer attend").visible?
  end

  def click_cannot_attend
    click_link("I can no longer attend")
  end

  def click_manage_invitation_button
    click_link("Manage your invitation")
  end

end
