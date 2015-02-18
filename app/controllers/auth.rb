get '/' do
  erb :welcome
end


post '/login' do

  session[:user].id = User.find_by(name: params[:name],password: params[:password])

  # if user exists redirect to their dashboard


    redirect "/users/#{session[:user].id}"

end



post '/signup' do

  session[:user] = User.create(name: params[:name], password: params[:password])

  redirect "/users/#{session[:user].id}"

end
