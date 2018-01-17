require_relative 'pages/homepage'
require_relative 'pages/tutorials_page'

module CodebarSite

  def homepage_page
    HomePage.new
  end

  def tutorials_page
    TutorialsPage.new
  end


end
