class Api::V1::TopsController < ApplicationController
  def index
    render json: { data: { message: "Welcome to my app" }} , status: :ok
  end
end
