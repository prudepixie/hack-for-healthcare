class A1csController < ApplicationController
  before_action :set_a1c, only: [:show, :edit, :update, :destroy]

  # GET /a1cs
  # GET /a1cs.json
  def index
    @a1cs = A1c.all
  end

  # GET /a1cs/1
  # GET /a1cs/1.json
  def show
  end

  # GET /a1cs/new
  def new
    @a1c = A1c.new
  end

  # GET /a1cs/1/edit
  def edit
  end

  # POST /a1cs
  # POST /a1cs.json
  def create
    @a1c = A1c.new(a1c_params)

    respond_to do |format|
      if @a1c.save
        format.html { redirect_to @a1c, notice: 'A1c was successfully created.' }
        format.json { render :show, status: :created, location: @a1c }
      else
        format.html { render :new }
        format.json { render json: @a1c.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /a1cs/1
  # PATCH/PUT /a1cs/1.json
  def update
    respond_to do |format|
      if @a1c.update(a1c_params)
        format.html { redirect_to @a1c, notice: 'A1c was successfully updated.' }
        format.json { render :show, status: :ok, location: @a1c }
      else
        format.html { render :edit }
        format.json { render json: @a1c.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /a1cs/1
  # DELETE /a1cs/1.json
  def destroy
    @a1c.destroy
    respond_to do |format|
      format.html { redirect_to a1cs_url, notice: 'A1c was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_a1c
      @a1c = A1c.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def a1c_params
      params.require(:a1c).permit(:value)
    end
end
