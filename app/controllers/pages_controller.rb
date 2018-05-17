class PagesController < ApplicationController


skip_before_action :authenticate_user!, only: [:home, :entrepreneurs]

  def home
  end

  def show
  end

  def entrepreneurs
  end
end
