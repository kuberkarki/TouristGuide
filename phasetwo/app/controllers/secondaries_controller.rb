class SecondariesController < ApplicationController
  before_action :set_secondary, only: [:show, :edit, :update, :destroy]

  # GET /secondaries
  # GET /secondaries.json
  def index
    
    @secondaries = Secondary.all
    #@secondaries = @master.secondaries.all
  end

  # GET /secondaries/1
  # GET /secondaries/1.json
  def show
  
  end

  # GET /secondaries/new
  def new
    @secondary = @master.secondaries.new
    # @secondary = Secondary.new
  end

  # GET /secondaries/1/edit
  def edit
  end

  # POST /secondaries
  # POST /secondaries.json
  def create
    @secondary = Secondary.new(secondary_params)

    respond_to do |format|
      if @secondary.save
        format.html { redirect_to @secondary, notice: 'Secondary was successfully created.' }
        format.json { render :show, status: :created, location: @secondary }
      else
        format.html { render :new }
        format.json { render json: @secondary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /secondaries/1
  # PATCH/PUT /secondaries/1.json
  def update
    respond_to do |format|
      if @secondary.update(secondary_params)
        format.html { redirect_to @secondary, notice: 'Secondary was successfully updated.' }
        format.json { render :show, status: :ok, location: @secondary }
      else
        format.html { render :edit }
        format.json { render json: @secondary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /secondaries/1
  # DELETE /secondaries/1.json
  def destroy
    @secondary.destroy
    respond_to do |format|
      format.html { redirect_to secondaries_url, notice: 'Secondary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def master_new
    @master = Master.find(params[:id])
    @secondary = @master.secondaries.new
  end

  def master_create
    @master = Master.find(params[:id])
    @secondary = @master.secondaries.create(secondary_params)
    respond_to do |format|
      if @secondary.save
        format.html{ redirect_to root_url, notice: "One secondary data is added in master data" }
      else
        format.html {render :master_new, notice: "Unable to added secondary data" }
      end
    end
  end
def secondary_index
    @master = Master.find(params[:id])
    @secondaries = @master.secondaries
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_secondary
      @secondary = Secondary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def secondary_params
      params.require(:secondary).permit(:name, :description, :height, :width, :depth, :distance_from, :distance_end)
    end
end
