# frozen_string_literal: true

class WritingsController < OpenReadController
  before_action :set_writing, only: %i[update destroy]

  # GET /writings
  def index
    @writings = Writing.all

    render json: @writings
  end

  # GET /writings/1
  def show
    render json: Writing.find(params[:id])
  end

  # POST /writings
  def create
    @writing = current_user.writings.build(writing_params)

    if @writing.save
      render json: @writing, status: :created
    else
      render json: @writing.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /writings/1
  def update
    if @writing.update(writing_params)
      render json: @writing
    else
      render json: @writing.errors, status: :unprocessable_entity
    end
  end

  # DELETE /writings/1
  def destroy
    @writing.destroy

    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_writing
    @writing = current_user.writings.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def writing_params
    params.require(:writing).permit(:user_id, :name, :genre, :completion_date, :country_of_origin, :recommend, :author)
  end
end
