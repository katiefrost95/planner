require 'capybara/dsl'

class TutorialsPage
  include Capybara::DSL

  def find_html_lesson_1
    find('a', text: 'Lesson 1 - Introducing HTML', exact: true)
  end

  def click_html_lesson_1
    find_html_lesson_1.click
  end


end
