class WwwController < ApplicationController
  before_action :get_logged_user

  def index
  end

  def login
  end

  def useful_links
  end

  def get_json_code
    respond_to do |format|
        format.json { render json: [1,2,3] }
        format.html { }  
    end
  end
end
