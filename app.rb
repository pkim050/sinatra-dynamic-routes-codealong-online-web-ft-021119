require_relative 'config/environment'

class App < Sinatra::Base
  resp = Rack::Response.new
  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
  get "/goodbye/:name" do
    @user = params[:name]
    "Goodbye, #{@user}."
  end

  get "/multiply/:num1/:num2" do
    resp.status = 200
    @num1 = params[:num1]
    @num2 = params[:num2]
    @num1 * @num2
  end
  resp.finish
end
