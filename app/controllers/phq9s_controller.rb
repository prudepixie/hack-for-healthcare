class Phq9sController < ApplicationController
  before_action :set_phq9, only: [:show, :edit, :update, :destroy]

  # GET /phq9s
  # GET /phq9s.json
  def index
    @phq9s = Phq9.all
  end

  # GET /phq9s/1
  # GET /phq9s/1.json
  def show
  end

  # GET /phq9s/new
  def new
    @phq9 = Phq9.new
  end

  # GET /phq9s/1/edit
  def edit
  end

  # POST /phq9s
  # POST /phq9s.json
  def create
    @phq9 = Phq9.new(phq9_params)

    respond_to do |format|
      if @phq9.save
        format.html { redirect_to @phq9, notice: 'Phq9 was successfully created.' }
        format.json { render :show, status: :created, location: @phq9 }
      else
        format.html { render :new }
        format.json { render json: @phq9.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phq9s/1
  # PATCH/PUT /phq9s/1.json
  def update
    respond_to do |format|
      if @phq9.update(phq9_params)
        format.html { redirect_to @phq9, notice: 'Phq9 was successfully updated.' }
        format.json { render :show, status: :ok, location: @phq9 }
      else
        format.html { render :edit }
        format.json { render json: @phq9.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phq9s/1
  # DELETE /phq9s/1.json
  def destroy
    @phq9.destroy
    respond_to do |format|
      format.html { redirect_to phq9s_url, notice: 'Phq9 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phq9
      @phq9 = Phq9.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phq9_params
      params.require(:phq9).permit(:value)
    end
end
