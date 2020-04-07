# require modules here
require "yaml"
require 'pp'

emotes = YAML.load_file('emoticons.yml')
p emotes
