class StaticPagesController < ApplicationController
  include FlickrHelper

  def home

  end

  def photos
    @photos = user_photos(params[:home][:user_id])
  end
end
