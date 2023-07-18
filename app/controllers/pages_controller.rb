class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :backend
  def home
  end
end
