class HomeController < ApplicationController
	 before_action :forbid_login_user,{only: [:about]}


  def about
  end
end
