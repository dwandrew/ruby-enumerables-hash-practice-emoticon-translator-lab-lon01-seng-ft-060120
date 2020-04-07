# require modules here
require "yaml"
require 'pp'

#emotes = YAML.load_file('./lib/emoticons.yml')
#pp emotes

def load_library(file)
 emotes = YAML.load_file(file)
emotes
emotes_meaning ={:get_meaning => {}, :get_emoticon =>{}}
emotes.each {|meaning, emotes| emotes_meaning[:get_meaning] = emotes[0]}
emotes_meaning
end