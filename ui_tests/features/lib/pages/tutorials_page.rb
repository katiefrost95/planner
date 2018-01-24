require 'capybara/dsl'

class TutorialsPage
  include Capybara::DSL

  BACK_TO_TUTORIALS = 'Back to tutorials'
  TUTORIALS_PAGE = 'http://tutorials.codebar.io/'

  def visit_tutorials_page
    visit(TUTORIALS_PAGE)
  end

  def find_tutorial(lecture_name)
    find_link(lecture_name).click
  end

  def find_back_to_tutorials
    find_link(BACK_TO_TUTORIALS).click
  end


end
