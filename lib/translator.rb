# require modules here
require "yaml"
require 'pp'

#emotes = YAML.load_file('./lib/emoticons.yml')
#pp emotes

def load_library(file)
 emotes = YAML.load_file(file)
emotes
emotes_meaning ={:get_meaning => {}, :get_emoticon =>{}}
emotes.each {|meaning, emotes|meaning; emotes;
  emotes_meaning[:get_meaning][emotes[1]]= meaning;
  emotes_meaning[:get_emoticon][emotes[0]] = emotes[1];
}
emotes_meaning
end

def get_japanese_emoticon(file, emote)
  load_library(file)
if load_library[:get_emoticon][emote]
  return load_library[:get_emoticon][emote]
else 'Sorry that emote doesnt exit'
end
end