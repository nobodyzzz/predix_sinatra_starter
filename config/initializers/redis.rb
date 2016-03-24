require "yaml"

# Redis Configuration
if ENV['VCAP_SERVICES']
  require 'json'
  credentials = JSON.parse(ENV['VCAP_SERVICES'])["redis-1"].first["credentials"]
  REDIS = Redis.new(credentials)
else
  redis_settings = YAML::load_file("config/redis.yml")
  REDIS = Redis.new(redis_settings[ENV['RACK_ENV']])
end

REDIS.set('chunky', 'bacon')
