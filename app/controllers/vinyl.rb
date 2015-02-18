get '/vinyls/:id' do


  @vinyl = Vinyl.find_by(id: params[:id])

  erb :show_vinyl

end


post '/vinyls' do


end


put '/vinyls/:id' do



end



delete '/vinyls/:id' do


end