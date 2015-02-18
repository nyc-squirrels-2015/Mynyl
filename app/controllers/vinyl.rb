get '/vinyls/create' do

 erb :create_vinyl

end



get '/vinyls/:id' do

  @vinyl = Vinyl.find_by(id: params[:id])
  erb :show_vinyl

end


post '/vinyls' do

  @new_vinyl = Vinyl.create(artist: params[:artist], title: params[:title], notes: params[:notes], user_id: session[:user].id, artwork: params[:artwork])
  p @new_vinyl
  p '*'*30
  redirect "/users/#{session[:user].id}"

end


put '/vinyls/:id' do




end



delete '/vinyls/:id' do


end