class BudgetsController < ApplicationController
  before_action :set_account, only: [:show, :update, :destroy]
  before_action :authenticate_user!

  def create
    Budget.create(params.require(:budget).permit(:month, :amount))
  end

  def index
    render json: Budget.all
  end
end

