class StrainWinesController < ApplicationController
  before_action :set_strain_wine, only: [:show, :edit, :update, :destroy]

  # GET /strain_wines
  # GET /strain_wines.json
  def index
    if params[:wine].present?
      @strain_wines = StrainWine.where(wine_id: params[:wine].to_i)
    else
      if params[:strain].present?
        @strain_wines = StrainWine.where(strain_id: params[:strain].to_i)
      else
        @strain_wines = StrainWine.all.order(:id).includes(:wine, :strain)
      end
    end
    @wines = Wine.all.order(:name)
    @strain = Strain.all.order(:name)
  end

  # GET /strain_wines/1
  # GET /strain_wines/1.json
  def show
  end

  # GET /strain_wines/new
  def new
    @strain_wine = StrainWine.new
  end

  # GET /strain_wines/1/edit
  def edit
  end

  # POST /strain_wines
  # POST /strain_wines.json
  def create
    @strain_wine = StrainWine.new(strain_wine_params)

    respond_to do |format|
      if @strain_wine.save
        format.html { redirect_to @strain_wine, notice: 'Strain wine was successfully created.' }
        format.json { render :show, status: :created, location: @strain_wine }
      else
        format.html { render :new }
        format.json { render json: @strain_wine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /strain_wines/1
  # PATCH/PUT /strain_wines/1.json
  def update
    respond_to do |format|
      if @strain_wine.update(strain_wine_update_params)
        format.html { redirect_to wine_path(@strain_wine.wine), notice: 'Strain wine was successfully updated.' }
        format.json { render :show, status: :ok, location: @strain_wine }
      else
        format.html { redirect_to strain_wines_path }
        format.json { render json: @strain_wine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /strain_wines/1
  # DELETE /strain_wines/1.json
  def destroy
    @strain_wine.destroy
    respond_to do |format|
      format.html { redirect_to strain_wines_url, notice: 'Strain wine was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_strain_wine
      @strain_wine = StrainWine.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def strain_wine_params
      params.fetch(:strain_wine, {} )
    end

    def strain_wine_update_params
      params.require(:strain_wine).permit(:percentage)
    end
end
