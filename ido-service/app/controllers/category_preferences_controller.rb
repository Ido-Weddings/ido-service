class CategoryPreferencesController < ApplicationController
  before_action :set_category_preference, only: [:show, :update, :destroy]

  # GET /category_preferences
  def index
@category_preferences = Category_preference.where(params[:where]).offset(params[:offset]).limit(params[:limit]).order(params[:order])

    render json: @category_preferences
  end

  # GET /category_preferences/1
  def show
    render json: @category_preference
  end

  # POST /category_preferences
  def create
    @category_preference = CategoryPreference.new(category_preference_params)

    if @category_preference.save
      render json: @category_preference, status: :created, location: @category_preference
    else
      render json: @category_preference.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /category_preferences/1
  def update
    if @category_preference.update(category_preference_params)
      render json: @category_preference
    else
      render json: @category_preference.errors, status: :unprocessable_entity
    end
  end

  # DELETE /category_preferences/1
  def destroy
    @category_preference.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category_preference
      @category_preference = CategoryPreference.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def category_preference_params
      params.require(:category_preference).permit(:budget, :preference_id, :category_id)
    end
end
