require 'capybara/dsl'

class Events
  include Capybara::DSL

  CLICK_DROPBOX = "session_invitation_note_chosen"
  CHOSEN_DROPBOX = "note_chosen"

  def click_on_a_workshop
    click_link("Workshop")
  end

  def click_on_an_event
    click_link("Event")
  end

  def click_attend_as_student
    find_link("Attend as a student").click
  end

  def click_dropdown
    find(:id, CLICK_DROPBOX).click
  end

  def click_chosen_dropdown
    find(:id, CHOSEN_DROPBOX).click
  end

  def click_dropdown_option
    find('li[data-option-array-index="1"]').click
  end

  def change_dropdown_option
    find('li[data-option-array-index="2"]').click
  end

  def click_update_note
    click_button('Update note')
  end

  def click_attend_button
    click_button('Attend')
  end

  def check_on_confirmation_page
    click_link('public listing')
  end

  def click_on_a_meeting
    click_link('Meeting')
  end

end
