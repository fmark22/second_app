class NotesController < ApplicationController
  #create
  def new
    @token = form_authenticity_token
  end
  
  def create
  note = Note.new 
  note.title = params[:input_title]
  note.content = params[:input_content]  
  note.save

  # TODO: 'notes/new'로 리다이렉트 되는 걸 변경한다.
  redirect_to "/notes/#{note.id}"
  end
  
  #read
  def index
    @notes = Note.all
  end
  
  def show
    @token = form_authenticity_token
    @note = Note.find params[:id]
  end
  
  #update
  def edit
    @note = Note.find params[:id]
  end

  def update
    note = Note.find params[:id]
    note.title = params[:input_title]
    note.contente = params[:input_content] 
    note.save
    redirect_to "/notes/#{note.id}"
    
    redirect_to "/notes"
  end
  
  #destory
  def destory
    @note = Note.find params[:id]
    @note.destory
    redirect_to '/notes'
  end
  
  
end
