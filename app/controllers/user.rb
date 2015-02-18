get '/users/:id' do
  @user = User.find_by(id: session[:user].id)
  erb :user_dashboard
end

put '/users/:id' do

 @user =  User.find_by(id: session[:user].id)
 p @user

 @user.update_attributes(name: params[:name], password: params[:password])

  redirect "/users/#{params[:id]}"

end

delete '/users/:id' do

  User.find_by(id: params[:id]).destroy
  session

  session.clear

  redirect '/'

end