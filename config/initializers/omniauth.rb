env_file = File.join(Rails.root, 'config', 'social_media_login_keys.yml' )
YAML.load(File.open(env_file)).each do |key,value|
	ENV[key.to_s] = value
end

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']
end