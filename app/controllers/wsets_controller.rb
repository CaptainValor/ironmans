class WsetsController < ApplicationController
  before_action :set_wset, only: [:show, :edit, :update, :destroy]

  # GET /wsets
  # GET /wsets.json
  def index
    @wsets = Wset.all
  end

  # GET /wsets/1
  # GET /wsets/1.json
  def show
  end

  # GET /wsets/new
  def new
    @wset = Wset.new
  end

  # GET /wsets/1/edit
  def edit
  end

  # POST /wsets
  # POST /wsets.json
  def create
    @wset = Wset.new(wset_params)

    respond_to do |format|
      if @wset.save
        format.html { redirect_to @wset, notice: 'Wset was successfully created.' }
        format.json { render action: 'show', status: :created, location: @wset }
      else
        format.html { render action: 'new' }
        format.json { render json: @wset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wsets/1
  # PATCH/PUT /wsets/1.json
  def update
    respond_to do |format|
      if @wset.update(wset_params)
        format.html { redirect_to @wset, notice: 'Wset was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @wset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wsets/1
  # DELETE /wsets/1.json
  def destroy
    @wset.destroy
    respond_to do |format|
      format.html { redirect_to wsets_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wset
      @wset = Wset.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wset_params
      params.require(:wset).permit(:reps, :duration)
    end
end
