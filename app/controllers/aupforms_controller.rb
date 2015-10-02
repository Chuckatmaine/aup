class AupformsController < ApplicationController
  before_action :set_aupform, only: [:show, :edit, :update, :destroy]

  # GET /aupforms
  # GET /aupforms.json
  def index
    @aupforms = Aupform.all
  end

  # GET /aupforms/1
  # GET /aupforms/1.json
  def show
  end

  # GET /aupforms/new
  def new
    @aupform = Aupform.new
  end

  # GET /aupforms/1/edit
  def edit
  end

  # POST /aupforms
  # POST /aupforms.json
  def create
    @aupform = Aupform.new(aupform_params)

    respond_to do |format|
      if @aupform.save
        format.html { redirect_to @aupform, notice: 'Aupform was successfully created.' }
        format.json { render :show, status: :created, location: @aupform }
      else
        format.html { render :new }
        format.json { render json: @aupform.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aupforms/1
  # PATCH/PUT /aupforms/1.json
  def update
    respond_to do |format|
      if @aupform.update(aupform_params)
        format.html { redirect_to @aupform, notice: 'Aupform was successfully updated.' }
        format.json { render :show, status: :ok, location: @aupform }
      else
        format.html { render :edit }
        format.json { render json: @aupform.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aupforms/1
  # DELETE /aupforms/1.json
  def destroy
    @aupform.destroy
    respond_to do |format|
      format.html { redirect_to aupforms_url, notice: 'Aupform was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aupform
      @aupform = Aupform.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aupform_params
      params.require(:aupform).permit(:userid, :aupaccept, :acceptdate)
    end
end
