class KineFichasController < ApplicationController
  before_action :set_kine_ficha, only: [:show, :update, :destroy]

  # GET /kine_fichas
  def index
    @kine_fichas = KineFicha.all

    render json: @kine_fichas
  end

  # GET /kine_fichas/1
  def show
    render json: @kine_ficha
  end

  # POST /kine_fichas
  def create
    @kine_ficha = KineFicha.new(kine_ficha_params)

    if @kine_ficha.save
      render json: @kine_ficha, status: :created, location: @kine_ficha
    else
      render json: @kine_ficha.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /kine_fichas/1
  def update
    if @kine_ficha.update(kine_ficha_params)
      render json: @kine_ficha
    else
      render json: @kine_ficha.errors, status: :unprocessable_entity
    end
  end

  # DELETE /kine_fichas/1
  def destroy
    @kine_ficha.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kine_ficha
      @kine_ficha = KineFicha.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def kine_ficha_params
      params.require(:kine_ficha).permit(:id_ficha_kine, :id_ficha, :riesgo, :nro_sesion, :id_especialista, :ergo_fecha_ing, :ergo_fecha_egr, :ergo_vol_ing, :ergo_vol_egr, :ergo_voml_ing, :ergo_voml_egr, :ergo_fcmax_ing, :ergo_fcmax_egr, :ergo_pulso_ing, :ergo_pulso_egr, :ergo_ve_ing, :ergo_ve_egr, :ergo_mets_ing, :ergo_mets_egr, :shu_fecha_ing, :shu_fecha_egr, :shu_mts_ing, :shu_mts_egr, :shu_niv_ing, :shu_niv_egr, :shu_vol_ing, :shu_vol_egr, :shu_mets_ing, :shu_mets_egr, :shu_fcmax_ing, :shu_fcmax_egr, :shu_fcmt_ing, :shu_fcmt_egr, :shu_metsmax_ing, :shu_metsmax_egr, :id_reserva, :tipo_evaluacion)
    end
end
