class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :event, :foodtruck, :contacts, :contact, :cgv ]

  def home
  end
end
