require "google/cloud/speech"

module GoogleCloudSpeechUtil

  def recognize(url)
    Google::Cloud::Speech.configure do |config|
      config.credentials = "config/credential.json"
    end
    speech = Google::Cloud::Speech.speech

    config = { encoding:          :LINEAR16,
            sample_rate_hertz: 44_100,
            language_code:     "ja-JP" }
    audio  = { uri: "gs://sound_files-libertines/doraemon2.wav" }

    response = speech.recognize config: config, audio: audio

    results = response.results

    alternatives = results.first.alternatives
    texts = []
    alternatives.each do |alternative|
      puts "Transcription: #{alternative.transcript}"
      texts.append(alternative.transcript)
    end
    return texts
  end
end