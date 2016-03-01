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
  @crabs = Crab.all
  erb :'/crabs/index'
end

# new
get '/crabs/new' do
  # respond with the form to make a new crab
  erb :'/crabs/new'
end

# create
post '/crabs' do
  # make a new crab from the data in the body of the request (in params) Crab.create()
  # redirect to the show page for this new crab
  crab = Crab.create(params)
  redirect "/crabs/#{crab.id}"
end

# show
get '/crabs/:id' do
  # respond with info about this particular crab
end

# edit
# get request to retrieve a form to edit
get '/crabs/:id/edit' do

end

# update
# put route to update the record

put '/crabs/:id' do

end

# destroy
# delete route to destroy the record
delete '/crabs/:id' do

end
