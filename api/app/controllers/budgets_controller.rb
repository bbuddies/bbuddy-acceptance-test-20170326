class BudgetsController < ApplicationController
  before_action :set_budget, only: [:show, :update, :destroy]
  before_action :authenticate_user!

  def create
    Budget.create(params.require(:budget).permit(:month, :amount))
  end

  def index
    render json: Budget.all
  end

  # PATCH/PUT /accounts/1
  def update
    if @budget.update(budget_params)
      render json: @budget
    else
      render json: errors(@budget.errors), status: :unprocessable_entity
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_budget
  @budget = Budget.find(params[:id])
  end

  def budget_params
    params.require(:budget).permit(:month, :amount)
  end
end

