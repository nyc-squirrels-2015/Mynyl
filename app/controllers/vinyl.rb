get '/vinyls/create' do

 erb :create_vinyl

end


post '/vinyls' do

  @new_vinyl = Vinyl.create(artist: params[:artist], title: params[:title], notes: params[:notes], user_id: session[:user].id, artwork: params[:artwork])
  p @new_vinyl
  p '*'*30
  redirect "/users/#{session[:user].id}"

end


delete '/vinyls/:id' do |id|

  p '100'*10
  Vinyl.find(id).destroy


   erb :_user_vinyls, :layout => false

end