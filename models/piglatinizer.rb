class PigLatinizer

  def piglatinize(phrase)
    words = phrase.split(" ")
    piglatin_words = []
    words.each{|word| piglatin_words << piglatinize_word(word)}
    piglatin_words.join(" ")
  end

  def piglatinize(word)
    parts_of_word = word.split(/([^aeiouAEIOU]*)([aeiouAEIOU]*)(.*)/)
    # binding.pry
    start = parts_of_word[1] # consonant cluster
    rest = parts_of_word[2] + (parts_of_word[3] || "")
    if start.length>0
      "#{rest}#{start}ay"
    else
      "#{rest}way"
    end
  end
end
