get '/' do
  erb :welcome
end


post '/login' do

  session[:user] = User.find_by(name: params[:name])

  # if user exists redirect to their dashboard
  if session[:user]
    redirect "/users/#{session[:user].id}"
  end

    redirect "/"

end


post '/signup' do

  session[:user] = User.create(name: params[:name], password: params[:password])

  redirect "/users/#{session[:user].id}"

end
