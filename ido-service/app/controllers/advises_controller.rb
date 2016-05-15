class AdvisesController < ApplicationController
  before_action :set_advise, only: [:show, :update, :destroy]

  # GET /advises
  def index
@advises = Advise.where(params[:where]).offset(params[:offset]).limit(params[:limit]).order(params[:order])

    render json: @advises
  end

  # GET /advises/1
  def show
    render json: @advise
  end

  # POST /advises
  def create
    @advise = Advise.new(advise_params)

    if @advise.save
      render json: @advise, status: :created, location: @advise
    else
      render json: @advise.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /advises/1
  def update
    if @advise.update(advise_params)
      render json: @advise
    else
      render json: @advise.errors, status: :unprocessable_entity
    end
  end

  # DELETE /advises/1
  def destroy
    @advise.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_advise
      @advise = Advise.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def advise_params
      params.require(:advise).permit(:user_id, :enterprise_id, :content)
    end
end
