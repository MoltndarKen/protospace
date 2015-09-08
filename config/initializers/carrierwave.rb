CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => 'AKIAIVVSBNPXN4W4OPAA',
    :aws_secret_access_key  => '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',
    :region                 => 'ap-northeast-1'
  }

  config.fog_directory = 'pppprotospace' if Rails.env.production?
  config.fog_directory = 'pppprotospace' if Rails.env.development?

end