class EnologonewspapersController < ApplicationController

  def create
  	@revista = Newspaper.find(params[:newspaper].to_i)
  	@enologo = Enologo.find(params[:enologo].to_i)
  	
  	@enologonewspaper =EnologoNewspaper.where(newspaper: @revista).where(enologo: @enologo)

  	if @enologonewspaper.present?
  		if ! params[:cargos_ids].nil?
			 @enologonewspaper.update(cargo: params[:cargos_ids])
		  end
  	else
  		EnologoNewspaper.create(newspaper: @revista , enologo: @enologo, cargo: params[:cargos_ids] )
  	end

  	redirect_to @enologo
  end


  def destroy
  	@enologonewspaper = EnologoNewspaper.find(params[:id])
  	@enologo = Enologo.find(@enologonewspaper.enologo_id) 
  	@enologonewspaper.destroy
  	redirect_to @enologo
  end



end
