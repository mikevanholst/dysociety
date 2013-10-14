class SashesController < ApplicationController
  before_action :set_sash, only: [:show, :edit, :update, :destroy]

  # GET /sashes
  # GET /sashes.json
  def index
    @sashes = Sash.all
  end

  # GET /sashes/1
  # GET /sashes/1.json
  def show
  end

  # GET /sashes/new
  def new
    @sash = Sash.new
  end

  # GET /sashes/1/edit
  def edit
  end

  # POST /sashes
  # POST /sashes.json
  def create
    @sash = Sash.new(sash_params)

    respond_to do |format|
      if @sash.save
        format.html { redirect_to @sash, notice: 'Sash was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sash }
      else
        format.html { render action: 'new' }
        format.json { render json: @sash.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sashes/1
  # PATCH/PUT /sashes/1.json
  def update
    respond_to do |format|
      if @sash.update(sash_params)
        format.html { redirect_to @sash, notice: 'Sash was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sash.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sashes/1
  # DELETE /sashes/1.json
  def destroy
    @sash.destroy
    respond_to do |format|
      format.html { redirect_to sashes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sash
      @sash = Sash.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sash_params
      params[:sash]
    end
end
