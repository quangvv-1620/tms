# frozen_string_literal: true

class ApiController < ApplicationController
  include Response

  rescue_from StandardError, with: :handle_error

  def handle_error(err)
    logger.error([err, err.backtrace.take(20)].join("\n"))

    render json: { errors: [
      {
        message: err.message,
        code: 123
      }
    ] }, status: 400
  end

  def

  def logger
    @logger ||= Rails.logger
  end
end
