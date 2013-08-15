class FsetsController < ApplicationController
  before_action :set_fset, only: [:show, :edit, :update, :destroy]

  # GET /fsets
  # GET /fsets.json
  def index
    @fsets = Fset.all
  end

  # GET /fsets/1
  # GET /fsets/1.json
  def show
  end

  # GET /fsets/new
  def new
    @fset = Fset.new
  end

  # GET /fsets/1/edit
  def edit
  end

  # POST /fsets
  # POST /fsets.json
  def create
    @fset = Fset.new(fset_params)

    respond_to do |format|
      if @fset.save
        format.html { redirect_to @fset, notice: 'Fset was successfully created.' }
        format.json { render action: 'show', status: :created, location: @fset }
      else
        format.html { render action: 'new' }
        format.json { render json: @fset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fsets/1
  # PATCH/PUT /fsets/1.json
  def update
    respond_to do |format|
      if @fset.update(fset_params)
        format.html { redirect_to @fset, notice: 'Fset was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @fset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fsets/1
  # DELETE /fsets/1.json
  def destroy
    @fset.destroy
    respond_to do |format|
      format.html { redirect_to fsets_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fset
      @fset = Fset.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fset_params
      params.require(:fset).permit(:reps, :duration)
    end
end
