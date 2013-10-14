class CulsertionsController < ApplicationController
  before_action :set_culsertion, only: [:show, :edit, :update, :destroy]

  # GET /culsertions
  # GET /culsertions.json
  def index
    @culsertions = Culsertion.all
  end

  # GET /culsertions/1
  # GET /culsertions/1.json
  def show
  end

  # GET /culsertions/new
  def new
    @culsertion = Culsertion.new
  end

  # GET /culsertions/1/edit
  def edit
  end

  # POST /culsertions
  # POST /culsertions.json
  def create
    @culsertion = Culsertion.new(culsertion_params)

    respond_to do |format|
      if @culsertion.save
        format.html { redirect_to @culsertion, notice: 'Culsertion was successfully created.' }
        format.json { render action: 'show', status: :created, location: @culsertion }
      else
        format.html { render action: 'new' }
        format.json { render json: @culsertion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /culsertions/1
  # PATCH/PUT /culsertions/1.json
  def update
    respond_to do |format|
      if @culsertion.update(culsertion_params)
        format.html { redirect_to @culsertion, notice: 'Culsertion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @culsertion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /culsertions/1
  # DELETE /culsertions/1.json
  def destroy
    @culsertion.destroy
    respond_to do |format|
      format.html { redirect_to culsertions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_culsertion
      @culsertion = Culsertion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def culsertion_params
      params.require(:culsertion).permit(:title, :content, :tally)
    end
end
