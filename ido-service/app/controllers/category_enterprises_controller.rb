class CategoryEnterprisesController < ApplicationController
  before_action :set_category_enterprise, only: [:show, :update, :destroy]

  # GET /category_enterprises
  def index

    @category_enterprises = CategoryEnterprise.joins(:enterprise).where(params[:where]).offset(params[:offset]).limit(params[:limit]).order(params[:order])
    render json: @category_enterprises
  end

  # GET /category_enterprises/1
  def show
    render json: @category_enterprise
  end

  # POST /category_enterprises
  def create
    @category_enterprise = CategoryEnterprise.new(category_enterprise_params)

    if @category_enterprise.save
      render json: @category_enterprise, status: :created, location: @category_enterprise
    else
      render json: @category_enterprise.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /category_enterprises/1
  def update
    if @category_enterprise.update(category_enterprise_params)
      render json: @category_enterprise
    else
      render json: @category_enterprise.errors, status: :unprocessable_entity
    end
  end

  # DELETE /category_enterprises/1
  def destroy
    @category_enterprise.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category_enterprise
      @category_enterprise = CategoryEnterprise.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def category_enterprise_params
      params.require(:category_enterprise).permit(:category_id, :enterprise_id, :base_price, :description, :capacity)
    end
end
