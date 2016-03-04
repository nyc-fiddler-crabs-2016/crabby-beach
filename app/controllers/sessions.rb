get '/login' do
  erb :'/sessions/login'
end

post '/login' do
  crab = Crab.find_by(name: params[:name])
  if crab && crab.password == params[:password]
    session[:crab_id] = crab.id
    redirect '/'
  else
    redirect '/login'
  end
end

get '/logout' do
  session.clear
  redirect '/'
end

