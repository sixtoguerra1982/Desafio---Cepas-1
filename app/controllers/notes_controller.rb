class NotesController < ApplicationController
  def create
  	@enologo = Enologo.find(params[:enologo].to_i)
  	@wine = Wine.find(params[:wine].to_i)
  	note = Note.where(enologo: @enologo).where(wine: @wine)
  	if note.present?
  		note.update(score: params[:score].to_i)
    else
    	Note.create!(enologo: @enologo, wine: @wine, score: params[:score].to_i )
    end
    redirect_to @wine
  end
end
