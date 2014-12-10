class DescriptionsController < ApplicationController
  before_action :set_description, only: [:show, :edit, :update, :destroy]

  # GET /descriptions
  # GET /descriptions.json
  def index
    @descriptions = Description.all
  end
  def description_index
    @secondary = Secondary.find(params[:id])
    @descriptions = @secondary.descriptions
end

  # GET /descriptions/1
  # GET /descriptions/1.json
  def show
  end

  # GET /descriptions/new
  def new
    @description = Description.new
  end

  # GET /descriptions/1/edit
  def edit
  end

 def secondary_new
    @secondary = Secondary.find(params[:id])
    @description = @secondary.descriptions.new
end

def secondary_create
    @secondary = Secondary.find(params[:id])
    @description = @secondary.descriptions.create(description_params)
    respond_to do |format|
      if @description.save
        format.html{ redirect_to secondary_description_index_path(@secondary.master.id), notice: "One description data is added in master data" }
      else
        format.html {render :secondary_new, notice: "Unable to add description data" }
      end
    end
  end



  # POST /descriptions
  # POST /descriptions.json
  def create
    @description = Description.new(description_params)

    respond_to do |format|
      if @description.save
        format.html { redirect_to @description, notice: 'Description was successfully created.' }
        format.json { render :show, status: :created, location: @description }
      else
        format.html { render :new }
        format.json { render json: @description.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /descriptions/1
  # PATCH/PUT /descriptions/1.json
  def update
    respond_to do |format|
      if @description.update(description_params)
        format.html { redirect_to @description, notice: 'Description was successfully updated.' }
        format.json { render :show, status: :ok, location: @description }
      else
        format.html { render :edit }
        format.json { render json: @description.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /descriptions/1
  # DELETE /descriptions/1.json
  def destroy
    @description.destroy
    respond_to do |format|
      format.html { redirect_to descriptions_url, notice: 'Description was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_description
      @description = Description.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def description_params
      params.require(:description).permit(:description)
    end
end
