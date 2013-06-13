helpers do


def notes?
  @notes = Note.all

  if @notes.length > 0
    :_notes_list
  else
    :_no_notes
  end
end 

def delete_note?(params)
  note = Note.find(params[:id])
  
  if params[:delete?] == "Do It!"    
    note.destroy
    redirect '/'
  else
    redirect "/note/#{note.id}/view"
  end
end

  
end