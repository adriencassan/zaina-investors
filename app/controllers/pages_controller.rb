class PagesController < ApplicationController


skip_before_action :authenticate_user!, only: [:home, :entrepreneurs, :advisors, :packages, :about, :teamoverview, :advisorsoverview]

  def home
  end

  def show
  end

  def entrepreneurs
  end

  def advisors
  end

  def packages
  end
end
