class UsuasController < ApplicationController
  before_action :set_usua, only: [:show, :update, :destroy]

  # GET /usuas
  def index
    @usuas = Usua.all

    render json: @usuas
  end

  # GET /usuas/1
  def show
    render json: @usua
  end

  # POST /usuas
  def create
    @usua = Usua.new(usua_params)

    if @usua.save
      render json: @usua, status: :created, location: @usua
    else
      render json: @usua.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /usuas/1
  def update
    if @usua.update(usua_params)
      render json: @usua
    else
      render json: @usua.errors, status: :unprocessable_entity
    end
  end

  # DELETE /usuas/1
  def destroy
    @usua.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usua
      @usua = Usua.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def usua_params
      params.require(:usua).permit(:nombre, :email, :contrasena)
    end
end
