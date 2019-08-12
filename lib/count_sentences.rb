require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    end
    return false
  end

  def question?
    if self.end_with?("?")
      return true
    end
    return false 

  end

  def exclamation?
    if self.end_with?("!")
      return true
    end
    return false

  end

  def count_sentences
    limits = [".", "?", "!"]

    sentences = (self.squeeze).split(Regexp.union(limits))
    return sentences.count

  end
end