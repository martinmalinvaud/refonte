class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :event, :foodtruck, :contact, :cgv ]

  def home
  end
end
