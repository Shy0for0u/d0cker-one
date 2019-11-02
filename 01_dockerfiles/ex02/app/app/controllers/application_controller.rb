class ApplicationController < ActionController::Base
  def hello
    render html: "Have are nice day, dear Peep!\n My name is 'dgorold-' aka Pasha \nHow are you!?"
  end
end
