# require modules here
require "yaml"
require 'pp'

def load_library(file_path)
  i=0;
  file = File.read(file_path)
  emoticons = YAML.load(file)
  library = {"get_meaning": {}, "get_emoticon": {}}
  emoticons.each do |emotion, emoticon|  eng, jap = emoticon
     library[:get_meaning][jap] = emotion
     library[:get_emoticon][eng] = jap 
    
 end
library
end

def get_japanese_emoticon(file_path, emoticon)
library = load_library(file_path) 
<<<<<<< HEAD
  if library[:get_emoticon][emoticon] == nil
  return "Sorry, that emoticon was not found"
  else 
  jap_emote= library[:get_emoticon][emoticon]
  jap_emote
  end
=======
if library.has_value?(emoticon)
jap_emote= library[:get_emoticon][emoticon]
jap_emote
else puts 
>>>>>>> a1723dcdb49ce12bc1c8932986ebba5ecc97df33
end

def get_english_meaning(file_path, emoticon)
library = load_library(file_path)
  if library[:get_meaning][emoticon] == nil
  return "Sorry, that emoticon was not found"
  else 
  emote= library[:get_meaning][emoticon]
  emote
  end
  
end