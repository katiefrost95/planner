require 'capybara/dsl'

class SubscriptionPage
  include Capybara::DSL

  COACHES_LONDON_BUTTON_ID = 'london-coaches'
  STUDENTS_BRIGHTON_BUTTON_ID = 'brighton-students'
  STUDENTS_LONDON_ID = 'london-students'
  STUDENTS_LONDON_BUTTON_ID = 'london-students'

  def find_london_coaches_button
    find(:id, COACHES_LONDON_BUTTON_ID)
  end

  def find_brighton_students_button
    find(:id, STUDENTS_BRIGHTON_BUTTON_ID)
  end

  def find_london_students_button
    find(:id, STUDENTS_LONDON_ID)
  end

  def check_london_coaches_subscribe
    if find_london_coaches_button.value == 'Subscribe'
      return true
    end
    return false
  end

  def check_london_students_subscribe
    if find_london_students_button.value == 'Subscribe'
      return true
    end
    return false
  end

  def check_london_coaches_button
    if find_london_coaches_button.value == 'Subscribed'
      return true
    end
    return false
  end

  def check_brighton_students_button
    if find_brighton_students_button.value == 'Subscribed'
      return true
    end
    return false
  end

  def check_london_students_button
    if find_london_students_button.value == 'Subscribed'
      return true
    end
    return false
  end

  def find_london_students_button
    find(:id, STUDENTS_LONDON_ID)
  end

  def check_london_students_button
    if find_london_students_button.value == 'Subscribe'
      return true
    end
    return false
  end

  def click_london_coaches_subscribe_button
    find_london_coaches_button.click
  end

  def click_brighton_subscribe
    find(:id, STUDENTS_BRIGHTON_BUTTON_ID).click
  end

  def click_london_students
    find(:id, STUDENTS_LONDON_ID).click
  end

  def find_london_students_button
    find(:id, STUDENTS_LONDON_BUTTON_ID)
  end

  def check_london_students_button
    if find_london_students_button.value == 'Subscribed'
      return true
    end
    return false
  end

  def click_london_students_button
    find_london_students_button.click
  end

end
