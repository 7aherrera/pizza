class PunchlinesController < ApplicationController
  before_action :set_punchline, only: [:show, :edit, :update, :destroy]

  # GET /punchlines
  # GET /punchlines.json
  def index
    @punchlines = Punchline.all
  end

  # GET /punchlines/1
  # GET /punchlines/1.json
  def show
  end

  # GET /punchlines/new
  def new
    @punchline = Punchline.new
  end

  # GET /punchlines/1/edit
  def edit
  end

  # POST /punchlines
  # POST /punchlines.json
  def create
    @punchline = Punchline.new(punchline_params)

    respond_to do |format|
      if @punchline.save
        format.html { redirect_to @punchline, notice: 'Punchline was successfully created.' }
        format.json { render :show, status: :created, location: @punchline }
      else
        format.html { render :new }
        format.json { render json: @punchline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /punchlines/1
  # PATCH/PUT /punchlines/1.json
  def update
    respond_to do |format|
      if @punchline.update(punchline_params)
        format.html { redirect_to @punchline, notice: 'Punchline was successfully updated.' }
        format.json { render :show, status: :ok, location: @punchline }
      else
        format.html { render :edit }
        format.json { render json: @punchline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /punchlines/1
  # DELETE /punchlines/1.json
  def destroy
    @punchline.destroy
    respond_to do |format|
      format.html { redirect_to punchlines_url, notice: 'Punchline was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_punchline
      @punchline = Punchline.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def punchline_params
      params.require(:punchline).permit(:name)
    end
end
