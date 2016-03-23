require "yaml"
settings = YAML::load_file("config/database.yml")
# Sequel Configuration

DB = Sequel.connect(settings[ENV['RACK_ENV']])
