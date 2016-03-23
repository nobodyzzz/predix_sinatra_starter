require 'yaml'
require 'erb'

settings = YAML.load(ERB.new(File.read('config/database.yml')).result)
# Sequel Configuration

DB = Sequel.connect(settings[ENV['RACK_ENV']])
