class EnterprisesController < ApplicationController
  before_action :set_enterprise, only: [:show, :update, :destroy]

  # GET /enterprises
  def index
@enterprises = Enterprise.where(params[:where]).offset(params[:offset]).limit(params[:limit]).order(params[:order])

    render json: @enterprises
  end

  # GET /enterprises/1
  def show
    render json: @enterprise
  end

  # POST /enterprises
  def create
    @enterprise = Enterprise.new(enterprise_params)

    if @enterprise.save
      render json: @enterprise, status: :created, location: @enterprise
    else
      render json: @enterprise.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /enterprises/1
  def update
    if @enterprise.update(enterprise_params)
      render json: @enterprise
    else
      render json: @enterprise.errors, status: :unprocessable_entity
    end
  end

  # DELETE /enterprises/1
  def destroy
    @enterprise.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enterprise
      @enterprise = Enterprise.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def enterprise_params
      params.require(:enterprise).permit(:name, :description, :telephone, :cellphone, :email, :address, :latitude, :longitude, :register_id, :is_freelance)
    end
end
