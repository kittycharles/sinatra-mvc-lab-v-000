class PigLatinizer
  def to_pig_latin(phrase)
    words = phrase.split(" ")
    words.collect {|w| piglatinize(w)}.join(" ")
  end

  def piglatinize(word)
    split_word = word.split(/([^aeiouAEIOU]*)([aeiouAEIOU]*)(.*)/)
    start_of_word = split_word[1]
    end_of_word = split_word[2] + (split_word[3] || "")
    if start_of_word.length>0
      "#{end_of_word}#{start_of_word}ay"
    else
      "#{end_of_word}way"
    end
  end
end
