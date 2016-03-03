get '/beaches' do
  @beaches = Beach.all
  erb :'/beaches/index'
end

get '/beaches/:id' do
  @beach = Beach.find_by(id: params[:id])
  erb :'/beaches/show'
end
