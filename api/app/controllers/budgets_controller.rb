class BudgetsController < ApplicationController
  before_action :set_account, only: [:show, :update, :destroy]
  before_action :authenticate_user!

  # POST /accounts
  def create
    p params
  end
end

