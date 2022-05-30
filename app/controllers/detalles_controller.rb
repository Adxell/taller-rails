class DetallesController < ApplicationController
  before_action :set_detalle, only: %i[ show edit update destroy ]

  # GET /detalles or /detalles.json
  def index
    @detalles = Detalle.all
  end

  # GET /detalles/1 or /detalles/1.json
  def show
  end

  # GET /detalles/new
  def new
    @detalle = Detalle.new
  end

  # GET /detalles/1/edit
  def edit
  end

  # POST /detalles or /detalles.json
  def create
    @detalle = Detalle.new(detalle_params)

    respond_to do |format|
      if @detalle.save
        format.html { redirect_to detalle_url(@detalle), notice: "Detalle was successfully created." }
        format.json { render :show, status: :created, location: @detalle }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @detalle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /detalles/1 or /detalles/1.json
  def update
    respond_to do |format|
      if @detalle.update(detalle_params)
        format.html { redirect_to detalle_url(@detalle), notice: "Detalle was successfully updated." }
        format.json { render :show, status: :ok, location: @detalle }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @detalle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detalles/1 or /detalles/1.json
  def destroy
    @detalle.destroy

    respond_to do |format|
      format.html { redirect_to detalles_url, notice: "Detalle was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detalle
      @detalle = Detalle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def detalle_params
      params.require(:detalle).permit(:cantidad, :prestamo_id, :libro_id)
    end
end
