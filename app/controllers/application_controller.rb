class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    render html: "Hey I hope this works on Heroku!"
  end
end
