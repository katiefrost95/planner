require 'capybara/dsl'

class NewMember
  include Capybara::DSL

  def click_eligible_student_link
    find_link("I understand and meet the eligibility criteria. Sign me up as a student").click
  end

  def click_sign_up_as_coach
    find_link("Sign up as a coach").click
  end

end
