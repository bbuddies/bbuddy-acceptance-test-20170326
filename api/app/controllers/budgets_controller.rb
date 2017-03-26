class BudgetsController < ApplicationController
  before_action :set_account, only: [:show, :update, :destroy]
  before_action :authenticate_user!

  def create
    p params
  end

  def index
    render json: [{month: '2017-03', amount: 1000}]
  end
end

