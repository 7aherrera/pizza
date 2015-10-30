class PiizaIdsController < ApplicationController
  before_action :set_piiza_id, only: [:show, :edit, :update, :destroy]

  # GET /piiza_ids
  # GET /piiza_ids.json
  def index
    @piiza_ids = PiizaId.all
  end

  # GET /piiza_ids/1
  # GET /piiza_ids/1.json
  def show
  end

  # GET /piiza_ids/new
  def new
    @piiza_id = PiizaId.new
  end

  # GET /piiza_ids/1/edit
  def edit
  end

  # POST /piiza_ids
  # POST /piiza_ids.json
  def create
    @piiza_id = PiizaId.new(piiza_id_params)

    respond_to do |format|
      if @piiza_id.save
        format.html { redirect_to @piiza_id, notice: 'Piiza was successfully created.' }
        format.json { render :show, status: :created, location: @piiza_id }
      else
        format.html { render :new }
        format.json { render json: @piiza_id.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piiza_ids/1
  # PATCH/PUT /piiza_ids/1.json
  def update
    respond_to do |format|
      if @piiza_id.update(piiza_id_params)
        format.html { redirect_to @piiza_id, notice: 'Piiza was successfully updated.' }
        format.json { render :show, status: :ok, location: @piiza_id }
      else
        format.html { render :edit }
        format.json { render json: @piiza_id.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piiza_ids/1
  # DELETE /piiza_ids/1.json
  def destroy
    @piiza_id.destroy
    respond_to do |format|
      format.html { redirect_to piiza_ids_url, notice: 'Piiza was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piiza_id
      @piiza_id = PiizaId.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def piiza_id_params
      params.require(:piiza_id).permit(:name, :number)
    end
end
