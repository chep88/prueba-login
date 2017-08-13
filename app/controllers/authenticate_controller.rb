class AuthenticateController < ApplicationController
  def login
    render json: [{:suc=>"Quilicura"}]
  end

end
