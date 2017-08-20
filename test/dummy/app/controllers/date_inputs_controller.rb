class DateInputsController < ApplicationController
  before_action :set_date_input, only: [:show, :edit, :update, :destroy]

  # GET /date_inputs
  def index
    @date_inputs = DateInput.all
  end

  # GET /date_inputs/1
  def show
  end

  # GET /date_inputs/new
  def new
    @date_input = DateInput.new
  end

  # GET /date_inputs/1/edit
  def edit
  end

  # POST /date_inputs
  def create
    @date_input = DateInput.new(date_input_params)

    if @date_input.save
      redirect_to @date_input, notice: 'Date input was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /date_inputs/1
  def update
    if @date_input.update(date_input_params)
      redirect_to @date_input, notice: 'Date input was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /date_inputs/1
  def destroy
    @date_input.destroy
    redirect_to date_inputs_url, notice: 'Date input was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_date_input
      @date_input = DateInput.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def date_input_params
      params.fetch(:date_input, {}).permit(
        :date
      )
    end
end
