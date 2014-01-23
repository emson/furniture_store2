CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                 # required
    :aws_access_key_id      => ENV['AWS_KEY'],        # required
    :aws_secret_access_key  => ENV['AWS_SECRET_KEY'], # required
    :region                 => 'eu-west-1',
  }
  config.fog_directory  = 'balmain-web'        # required - bucket name
  config.fog_public     = true                 # required
end
