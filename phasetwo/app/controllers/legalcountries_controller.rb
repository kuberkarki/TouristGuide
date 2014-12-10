class LegalcountriesController < ApplicationController
  before_action :set_legalcountry, only: [:show, :edit, :update, :destroy]

  # GET /legalcountries
  # GET /legalcountries.json
  def index
    @legalcountries = Legalcountry.all
  end

  # GET /legalcountries/1
  # GET /legalcountries/1.json
  def show
  end

  # GET /legalcountries/new
  def new
    @legalcountry = Legalcountry.new
  end

  # GET /legalcountries/1/edit
  def edit
  end

  # POST /legalcountries
  # POST /legalcountries.json
  def create
    @legalcountry = Legalcountry.new(legalcountry_params)

    respond_to do |format|
      if @legalcountry.save
        format.html { redirect_to @legalcountry, notice: 'Legalcountry was successfully created.' }
        format.json { render :show, status: :created, location: @legalcountry }
      else
        format.html { render :new }
        format.json { render json: @legalcountry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /legalcountries/1
  # PATCH/PUT /legalcountries/1.json
  def update
    respond_to do |format|
      if @legalcountry.update(legalcountry_params)
        format.html { redirect_to @legalcountry, notice: 'Legalcountry was successfully updated.' }
        format.json { render :show, status: :ok, location: @legalcountry }
      else
        format.html { render :edit }
        format.json { render json: @legalcountry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /legalcountries/1
  # DELETE /legalcountries/1.json
  def destroy
    @legalcountry.destroy
    respond_to do |format|
      format.html { redirect_to legalcountries_url, notice: 'Legalcountry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_legalcountry
      @legalcountry = Legalcountry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def legalcountry_params
      params.require(:legalcountry).permit(:countryname, :countrypostalcode, :countrycallingcode, :country_createdby, :country_modifiedby)
    end
end
