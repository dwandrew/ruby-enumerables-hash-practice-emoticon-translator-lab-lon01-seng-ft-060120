# require modules here
require "yaml"
require 'pp'

emotes = YAML.load_file('./lib/emoticons.yml')
pp emotes
