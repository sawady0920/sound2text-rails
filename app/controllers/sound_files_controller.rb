class SoundFilesController < ApplicationController
  include GoogleCloudStorageUtil

  def new
    @b = getBucket()
    @r = { name: "yamada" }
    @url = getImageUrl("doraemon2.wav", @b)
    render :json => @url
  end

  def create
  end

  def show
  end

  def index
  end
end
