class PingController < ApplicationController
  def index
    render nothing: true, status: 200
  end
end