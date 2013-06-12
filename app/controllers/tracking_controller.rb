class TrackingController < ApplicationController
  # POST /check_in
  #
  # @post_param [String] post[title]
  # @post_param [String] post[id]
  # @post_param [Integer] ts (required)
  # @post_param [String] type "start" or "stop"
  def check_in
    check_in = CheckIn.new(tracking_params)

    if check_in.save
      render nothing: true, status: 201
    else
      render json: check_in.errors, status: 422
    end
  end

  private
  def tracking_params
    params.require(:tracking_type)
    params.require(:ts)
    params.require(:post_title)
    params.require(:post_id)
    params.permit(:tracking_type, :ts, :post_title, :post_id)
  end
end