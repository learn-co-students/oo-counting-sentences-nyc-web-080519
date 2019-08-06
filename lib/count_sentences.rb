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
    sent_arr = self.split(/[!?.]/)
    sent_arr.delete("")
    sent_arr.length
  end
end