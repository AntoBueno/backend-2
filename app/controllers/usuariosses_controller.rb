class UsuariossesController < ApplicationController
  before_action :set_usuarioss, only: [:show, :update, :destroy]

  # GET /usuariosses
  def index
    @usuariosses = Usuarioss.all

    render json: @usuariosses
  end

  # GET /usuariosses/1
  def show
    render json: @usuarioss
  end

  # POST /usuariosses
  def create
    @usuarioss = Usuarioss.new(usuarioss_params)

    if @usuarioss.save
      render json: @usuarioss, status: :created, location: @usuarioss
    else
      render json: @usuarioss.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /usuariosses/1
  def update
    if @usuarioss.update(usuarioss_params)
      render json: @usuarioss
    else
      render json: @usuarioss.errors, status: :unprocessable_entity
    end
  end

  # DELETE /usuariosses/1
  def destroy
    @usuarioss.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuarioss
      @usuarioss = Usuarioss.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def usuarioss_params
      params.require(:usuarioss).permit(:nombre, :email, :contrasena)
    end
end
