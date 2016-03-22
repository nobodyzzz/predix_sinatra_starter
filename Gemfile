source "https://rubygems.org/"

ruby '2.1.8'

# App Stack
gem "sinatra", "~> 1.4"

# Database Stack
gem "sequel"
gem "pg"

# Redis
gem "hiredis", "~> 0.4"
gem "redis", "~> 3.0", :require => ["redis/connection/hiredis", "redis"]
gem "fakeredis", "~> 0.4"

group :development do
  gem 'byebug'
  gem "rake", "~> 10.0"
  gem "minitest", "~> 5.2"
  gem "rack-test", "~> 0.6"
  gem "capistrano", "~> 3.0"
end
