class AlliesController < InheritedResources::Base
  before_action :set_ally, only: [:show, :edit, :update, :destroy]


  def index
   @allies = Ally.all
  end

  def show
    
  end

  def new
    
  end

def create
    @ally = Ally.new(ally_params)

    respond_to do |format|
      if @ally.save
        format.html { redirect_to @ally, notice: 'ally was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ally }
      else
        format.html { render action: 'new' }
        format.json { render json: @ally.errors, status: :unprocessable_entity }
      end
    end
  end

def update
    respond_to do |format|
      if @ally.update(article_params)
        format.html { redirect_to @ally, notice: 'Ally was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ally.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @ally.destroy
    respond_to do |format|
      format.html { redirect_to articles_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ally
      @ally = Ally.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ally_params
      params.require(:ally).permit(:name, :description, :url, :logo)
    end

end







