source 'http://rubygems.org'

gem "rails", "5.1.6"
gem 'constant_cache'
gem 'jquery-rails'
gem 'html5_validators'
gem 'validate_url'
gem 'validate_email'
gem 'rack-oauth2'
gem 'openid_connect'
gem 'public_suffix', '3.0.0'
gem 'json-jwt', '<= 1.9.4'

group :development, :test do
  gem 'pg', '~> 1.1', '>= 1.1.3'
  gem 'test-unit', '~> 3.0'
  gem 'puma'
end

group :test do
  gem 'turn', :require => false
end

group :production do
  gem 'pg', '~> 1.1', '>= 1.1.3'
  gem 'rack-ssl', :require => 'rack/ssl'
end
