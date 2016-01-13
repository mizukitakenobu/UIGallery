CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => 'AKIAIUQGXOEIQKJAOF2A',
    :aws_secret_access_key  => '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',
    :region                 => 'ap-northeast-1'
  }
  config.fog_directory = 'uigallery'

end
CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/