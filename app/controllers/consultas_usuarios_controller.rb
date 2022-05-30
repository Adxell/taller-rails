class ConsultasUsuariosController < ApplicationController
  before_action :set_consultas_usuario, only: %i[ show edit update destroy ]

  # GET /consultas_usuarios or /consultas_usuarios.json
  def index
    @consultas_usuarios = Usuario.all
  end

  # GET /consultas_usuarios/1 or /consultas_usuarios/1.json
  def show
  end

  # GET /consultas_usuarios/new
  def new
    @consultas_usuario = ConsultasUsuario.new
  end

  # GET /consultas_usuarios/1/edit
  def edit
  end

  # POST /consultas_usuarios or /consultas_usuarios.json
  def create
    @consultas_usuario = ConsultasUsuario.new(consultas_usuario_params)

    respond_to do |format|
      if @consultas_usuario.save
        format.html { redirect_to consultas_usuario_url(@consultas_usuario), notice: "Consultas usuario was successfully created." }
        format.json { render :show, status: :created, location: @consultas_usuario }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @consultas_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consultas_usuarios/1 or /consultas_usuarios/1.json
  def update
    respond_to do |format|
      if @consultas_usuario.update(consultas_usuario_params)
        format.html { redirect_to consultas_usuario_url(@consultas_usuario), notice: "Consultas usuario was successfully updated." }
        format.json { render :show, status: :ok, location: @consultas_usuario }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @consultas_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consultas_usuarios/1 or /consultas_usuarios/1.json
  def destroy
    @consultas_usuario.destroy

    respond_to do |format|
      format.html { redirect_to consultas_usuarios_url, notice: "Consultas usuario was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consultas_usuario
      @consultas_usuario = ConsultasUsuario.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def consultas_usuario_params
      params.fetch(:consultas_usuario, {})
    end
end
