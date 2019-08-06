

class String

  def sentence?
    self[-1] == "."
  end

  def question?
    self[-1] == "?"
  end

  def exclamation?
    self[-1] == "!"
  end

  def count_sentences
    count = 0 
    self.each_char.with_index do |char, i|
      if (char == "." || char == "!" || char == "?") && !(self[i-1] == "." || self[i-1] == "!" || self[i-1] == "?")
        count += 1 
      end
    end 
    return count 
  end
end