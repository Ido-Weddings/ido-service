class PreferencesController < ApplicationController
  before_action :set_preference, only: [:show, :update, :destroy]

  # GET /preferences
  def index
@preferences = Preference.where(params[:where]).offset(params[:offset]).limit(params[:limit]).order(params[:order])

    render json: @preferences
  end

  # GET /preferences/1
  def show
    render json: @preference
  end

  # POST /preferences
  def create
    @preference = Preference.new(preference_params)

    if @preference.save
      render json: @preference, status: :created, location: @preference
    else
      render json: @preference.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /preferences/1
  def update
    if @preference.update(preference_params)
      render json: @preference
    else
      render json: @preference.errors, status: :unprocessable_entity
    end
  end

  # DELETE /preferences/1
  def destroy
    @preference.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_preference
      @preference = Preference.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def preference_params
      params.require(:preference).permit(:guest_amount, :user_id)
    end
end
