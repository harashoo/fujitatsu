module Fujitatsu
  class Translator
    def self.shout(word)
      word.split('').join('゛') + '゛'
    end
  end
end