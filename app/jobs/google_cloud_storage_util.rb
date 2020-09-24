require "google/cloud/storage"

module GoogleCloudStorageUtil

  def getBucket()
    storage = Google::Cloud::Storage.new(
      project_id: "wired-freehold-290020",
      credentials: "config/credential.json"
    )
    storage.bucket "sound_files-libertines"
  end

  def getImageUrl(fileName, bucket)
    file = bucket.file(fileName)
    byebug
    if !file.nil?
      file.signed_url(method: "GET", expires: 60 * 60 * 24)
    else
      nil
    end
  end
end