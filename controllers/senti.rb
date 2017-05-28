require 'sinatra'

# Base class for KeywordCloud Web Application
class SentiJapApp < Sinatra::Base
  post '/search/?' do
    from_sentence = FindSenti.call(sentence: params)
    if from_sentence
      # @word = from_sentence['word']
      @pScore = from_sentence['pScore']
      @nScore = from_sentence['nScore']
      @sentiment = from_sentence['sentiment']
      # puts @word.class
      slim :search
    end
  end
end
