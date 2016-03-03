get '/beaches' do
  @beaches = Beach.all
  erb :'/beaches/index'
end

get '/beaches/new' do
  @beach = Beach.new
  erb :'/beaches/new'
end

post '/beaches' do
  @beach = Beach.new(params[:beach])
  if @beach.save
    redirect "/beaches/#{@beach.id}"
  else
    @errors = @beach.errors.full_messages
    erb :'/beaches/new'
  end
end

get '/beaches/:id' do
  @beach = Beach.find_by(id: params[:id])
  erb :'/beaches/show'
end
