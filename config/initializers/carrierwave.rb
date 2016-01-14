CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => 'hogehoge',
    :aws_secret_access_key  => 'fugafuga',
    :region                 => 'ap-northeast-1'
  }
  config.fog_directory = 'uigallery'

end
CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/