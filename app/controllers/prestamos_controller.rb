class PrestamosController < ApplicationController
  before_action :set_prestamo, only: %i[ show edit update destroy ]

  # GET /prestamos or /prestamos.json
  def index
    @prestamos = Prestamo.all
  end

  # GET /prestamos/1 or /prestamos/1.json
  def show
  end

  # GET /prestamos/new
  def new
    @prestamo = Prestamo.new
  end

  # GET /prestamos/1/edit
  def edit
  end

  # POST /prestamos or /prestamos.json
  def create
    @prestamo = Prestamo.new(prestamo_params)

    respond_to do |format|
      if @prestamo.save
        format.html { redirect_to prestamo_url(@prestamo), notice: "Prestamo was successfully created." }
        format.json { render :show, status: :created, location: @prestamo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @prestamo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prestamos/1 or /prestamos/1.json
  def update
    respond_to do |format|
      if @prestamo.update(prestamo_params)
        format.html { redirect_to prestamo_url(@prestamo), notice: "Prestamo was successfully updated." }
        format.json { render :show, status: :ok, location: @prestamo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @prestamo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prestamos/1 or /prestamos/1.json
  def destroy
    @prestamo.destroy

    respond_to do |format|
      format.html { redirect_to prestamos_url, notice: "Prestamo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prestamo
      @prestamo = Prestamo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def prestamo_params
      params.require(:prestamo).permit(:fecha, :estado, :usuario_id)
    end
end
