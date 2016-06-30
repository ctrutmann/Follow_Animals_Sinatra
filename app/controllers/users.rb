# show form for registering/creating new user
get '/users/new' do
  erb :'users/new'
end

# create new user
post '/users' do
  @user = User.new(params[:user])

  if @user.save
    redirect '/'
  else
    @errors = @user.errors.full_messages
    erb :'users/new'
  end
end

# show user profile page
get '/users/:id' do
  @user = User.find(params[:id])
  erb :'users/show'
end

# show form for user to edit their own info
get '/users/:id/edit' do
  @user = User.find(params[:id])
  erb :'users/edit'
end

# update a user
put '/users/:id' do
  @user = User.find(params[:id])

  @user.assign_attributes(params[:user])

  if @user.save
    redirect "/users/#{@user.id}"
  else
    @errors = @user.errors.full_messages
    erb :'users/edit'
  end
end

# delete a user (and thereby their account)
delete '/users/:id' do
  @user = User.find(params[:id])
  @user.destroy
  redirect '/'
end





