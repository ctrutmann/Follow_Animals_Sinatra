# show all animals
get '/animals' do

end

# show form for creating a new animal
get '/animals/new' do
  erb :'animals/new'
end

# create a new animal
post '/animals' do
  @animal = Animal.new(params[:animal])

  if @animal.save
    redirect '/'
  else
    @errors = @animal.errors.full_messages
    erb :'animals/new'
  end
end

# show animal's profile page
get '/animals/:id' do
  @animal = Animal.find(params[:id])
  erb :'animals/show'
end

# show form for editing an animal's info
get '/animals/:id/edit' do

end

# update an animal's info
put '/animals/:id' do

end

# delete an animal
delete '/animals/:id' do
  @animal = Animal.find(params[:id])
  @animal.destroy
  redirect "/users/#{session[:user_id]}"
end