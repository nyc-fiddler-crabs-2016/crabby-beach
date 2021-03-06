# I STRONGLY STRONGLY STRONGLY SUGGEST:
# DO NOT write out all of your routes at once.
# DO tackle actions one by one, from model to controller to view.

# welcome / splash
get '/' do
  redirect '/crabs'
end

# index
get '/crabs' do
  # respond with a list of all the crabs
  # binding.pry
  @crabs = Crab.all
  erb :'/crabs/index'
end

# new
get '/crabs/new' do
  # respond with the form to make a new crab
  @beaches = Beach.all
  @crab = Crab.new
  erb :'/crabs/new'
end

# create
post '/crabs' do
  # make a new crab from the data in the body of the request (in params) Crab.create()
  # redirect to the show page for this new crab
  @crab = Crab.new(params[:crab])
  if @crab.save
    redirect "/crabs/#{@crab.id}"
  else
    @beaches = Beach.all
    @errors = @crab.errors.full_messages
    erb :'/crabs/new'
  end
end

# show
get '/crabs/:id' do
  # respond with info about this particular crab
  @crab = Crab.find_by(id: params[:id])
  halt(404, erb(:'errors/404', layout: false)) unless @crab
  erb :'/crabs/show'
end

# edit
# get request to retrieve a form to edit
get '/crabs/:id/edit' do
  @crab = Crab.find_by(id: params[:id])
  halt(404, erb(:'errors/404', layout: false)) unless @crab
  @beaches = Beach.all
  erb :'/crabs/edit'
end

# update
# put route to update the record

put '/crabs/:id' do
  @crab = Crab.find(params[:id])
  @crab.assign_attributes(params[:crab])
  if @crab.save
    redirect "/crabs/#{@crab.id}"
  else
    @beaches = Beach.all
    @errors = @crab.errors.full_messages
    erb :'/crabs/edit'
  end
end

# destroy
# delete route to destroy the record
delete '/crabs/:id' do
  "NOT YET IMPLEMENTED"
end
