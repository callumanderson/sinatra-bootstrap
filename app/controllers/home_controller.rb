# example_controller.rb
class HomeController < ApplicationController
  get '/' do
    'Hello World!'
  end
end
