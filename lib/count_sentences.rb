require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    array = self.split(/[.?!]/)
    array.each do |word|
      if word == ""
        array.delete(word)
      end
    end
    array.size
  end
end