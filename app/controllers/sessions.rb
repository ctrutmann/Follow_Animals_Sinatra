# login user
post '/sessions' do
  @user = User.find_by(email: params[:email])
  if @user && @user.authenticate(params[:password])
    login(@user)
    redirect "/users/#{@user.id}"
  else
    @errors = "No account found matching that email/password combination."
    erb :index
  end
end

# logout user
get '/sessions/logout' do
  logout
  redirect '/'
end