class UfValuesController < ApplicationController
  before_action :set_uf_value, only: [:show, :update, :destroy]

  # GET /uf_values
  def index
    @uf_values = UfValue.all

    render json: @uf_values
  end

  # GET /uf_values/1
  def show
    render json: @uf_value
  end

  # POST /uf_values
  def create
    @uf_value = UfValue.new(uf_value_params)

    if @uf_value.save
      render json: @uf_value, status: :created, location: @uf_value
    else
      render json: @uf_value.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /uf_values/1
  def update
    if @uf_value.update(uf_value_params)
      render json: @uf_value
    else
      render json: @uf_value.errors, status: :unprocessable_entity
    end
  end

  # DELETE /uf_values/1
  def destroy
    @uf_value.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uf_value
      @uf_value = UfValue.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def uf_value_params
      params.require(:uf_value).permit(:client, :request_date, :uf_value)
    end
end
