require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end
  
  get "/goodbye/:name" do
    @goodbye = all_the_goodbyes.select do
      |goodbye|
        goodbye.id == params[:name]
    end.first
    erb :'goodbye/show.html'
  end

  # Code your final two routes here:

end