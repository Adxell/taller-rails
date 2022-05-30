class ConsultaController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @prestamos = Prestamo.all
  end

  def show
  end
  
  def modp
    @usuarios = Usuario.all
    seluser = params[:parametros]
    if (seluser != nil )
      @prestamolib = Prestamo.where(Usuario:seluser)
    end
  end
end
