get '/' do
  erb :index
end

get '/note/:id/view' do
  @note = Note.find(params[:id])
  erb :view_note
end

get '/note/:id/update' do
  @note = Note.find(params[:id])
  erb :update_note
end

get '/note/:id/delete' do
  @note = Note.find(params[:id])
  erb :delete_note
end

post '/note/new' do
  Note.create(params[:note])
  redirect '/'
end

post '/note/:id/update' do
  @note = Note.find(params[:id])
  @note.update_attributes(params[:note])
  redirect "/note/#{@note.id}/view"
end

post '/note/:id/delete' do
  delete_note?(params)
end
