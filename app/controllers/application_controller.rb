require 'rubygems'
require 'bundler'

Bundler.require

class ApplicationController < Sinatra::Base

  # set folder for templates to ../views, but make the path absolute
  set :views, File.expand_path('../../views', __FILE__)

  configure do
    disable :method_override
    disable :static

    set :sessions,
        :httponly     => true,
        :secure       => production?,
        :expire_after => 31557600, # 1 year
        :secret       => "*&dvntknk3e__032iuv"
  end

  use Rack::Deflater
end
