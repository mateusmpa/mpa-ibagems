class IbagemsController < ApplicationController
  before_action :set_ibagem, only: %i[ show edit update destroy ]

  # GET /ibagems or /ibagems.json
  def index
    @ibagems = Ibagem.all
  end

  # GET /ibagems/1 or /ibagems/1.json
  def show
  end

  # GET /ibagems/new
  def new
    @ibagem = Ibagem.new
  end

  # GET /ibagems/1/edit
  def edit
  end

  # POST /ibagems or /ibagems.json
  def create
    @ibagem = Ibagem.new(ibagem_params)

    respond_to do |format|
      if @ibagem.save
        format.html { redirect_to ibagem_url(@ibagem), notice: "Ibagem was successfully created." }
        format.json { render :show, status: :created, location: @ibagem }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ibagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ibagems/1 or /ibagems/1.json
  def update
    respond_to do |format|
      if @ibagem.update(ibagem_params)
        format.html { redirect_to ibagem_url(@ibagem), notice: "Ibagem was successfully updated." }
        format.json { render :show, status: :ok, location: @ibagem }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ibagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ibagems/1 or /ibagems/1.json
  def destroy
    @ibagem.destroy

    respond_to do |format|
      format.html { redirect_to ibagems_url, notice: "Ibagem was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ibagem
      @ibagem = Ibagem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ibagem_params
      params.require(:ibagem).permit(:name, :description)
    end
end
