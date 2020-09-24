class SoundFilesController < ApplicationController
  include GoogleCloudStorageUtil
  include GoogleCloudSpeechUtil

  def new
    @b = getBucket()
    @r = { name: "yamada" }
    @url = getImageUrl("doraemon2.wav", @b)
    texts = recognize(@url)
    render :json => texts
  end

  def create
  end

  def show
  end

  def index
  end
end
