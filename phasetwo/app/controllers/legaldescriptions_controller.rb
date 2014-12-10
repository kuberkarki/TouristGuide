class LegaldescriptionsController < ApplicationController
  before_action :set_legaldescription, only: [:show, :edit, :update, :destroy]

  # GET /legaldescriptions
  # GET /legaldescriptions.json
  def index
    @legaldescriptions = Legaldescription.all
  end

  # GET /legaldescriptions/1
  # GET /legaldescriptions/1.json
  def show
  end

  # GET /legaldescriptions/new
  def new
    @legaldescription = Legaldescription.new
  end

  # GET /legaldescriptions/1/edit
  def edit
  end

  # POST /legaldescriptions
  # POST /legaldescriptions.json
  def create
    @legaldescription = Legaldescription.new(legaldescription_params)

    respond_to do |format|
      if @legaldescription.save
        format.html { redirect_to @legaldescription, notice: 'Legaldescription was successfully created.' }
        format.json { render :show, status: :created, location: @legaldescription }
      else
        format.html { render :new }
        format.json { render json: @legaldescription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /legaldescriptions/1
  # PATCH/PUT /legaldescriptions/1.json
  def update
    respond_to do |format|
      if @legaldescription.update(legaldescription_params)
        format.html { redirect_to @legaldescription, notice: 'Legaldescription was successfully updated.' }
        format.json { render :show, status: :ok, location: @legaldescription }
      else
        format.html { render :edit }
        format.json { render json: @legaldescription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /legaldescriptions/1
  # DELETE /legaldescriptions/1.json
  def destroy
    @legaldescription.destroy
    respond_to do |format|
      format.html { redirect_to legaldescriptions_url, notice: 'Legaldescription was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_legaldescription
      @legaldescription = Legaldescription.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def legaldescription_params
      params.require(:legaldescription).permit(:ldescription, :ldesc_createdby, :ldesc_modifiedby)
    end
end
