# frozen_string_literal: true

class Api::V1::TopsController < ApiController
  def index
    render json: { data: { message: "Welcome to my app" } }, status: :ok
  end
end
