class VersionController < ApplicationController
  def index
    respond_to do |format|
      format.html { render :text => AppVersion.to_html }
      format.json { render :json => AppVersion.to_json }
    end
  end
end
