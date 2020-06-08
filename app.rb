require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
 
get "/goodbye/:name" do
    status 200
    @user_name = params[:name]
    "Goodbye #{@user_name}"
  end

  get "/multiply/:num1/:num2" do
    status 200
    params[:num1] * params[:num2]
  end
 
end