class LegalmastersController < ApplicationController
  before_action :set_legalmaster, only: [:show, :edit, :update, :destroy]

  # GET /legalmasters
  # GET /legalmasters.json
  def index
    @legalmasters = Legalmaster.all
  end

  # GET /legalmasters/1
  # GET /legalmasters/1.json
  def show
  end

  # GET /legalmasters/new
  def new
    @legalmaster = Legalmaster.new
  end

  # GET /legalmasters/1/edit
  def edit
  end

  # POST /legalmasters
  # POST /legalmasters.json
  def create
    @legalmaster = Legalmaster.new(legalmaster_params)

    respond_to do |format|
      if @legalmaster.save
        format.html { redirect_to @legalmaster, notice: 'Legalmaster was successfully created.' }
        format.json { render :show, status: :created, location: @legalmaster }
      else
        format.html { render :new }
        format.json { render json: @legalmaster.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /legalmasters/1
  # PATCH/PUT /legalmasters/1.json
  def update
    respond_to do |format|
      if @legalmaster.update(legalmaster_params)
        format.html { redirect_to @legalmaster, notice: 'Legalmaster was successfully updated.' }
        format.json { render :show, status: :ok, location: @legalmaster }
      else
        format.html { render :edit }
        format.json { render json: @legalmaster.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /legalmasters/1
  # DELETE /legalmasters/1.json
  def destroy
    @legalmaster.destroy
    respond_to do |format|
      format.html { redirect_to legalmasters_url, notice: 'Legalmaster was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_legalmaster
      @legalmaster = Legalmaster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def legalmaster_params
      params.require(:legalmaster).permit(:lmname, :lmdesc, :lmcreatedby, :lmmodifiedby)
    end
end
