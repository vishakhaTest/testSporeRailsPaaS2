class HealthcheckController < ApplicationController
  def index
    respond_to do |format|
      format.html { render :text => "OK" }
      format.json { render :json => {status: "OK"} }
    end
  end
end
