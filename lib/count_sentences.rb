require 'pry'
class String

  def sentence?
    if self.end_with?(".")
      puts "true"
    else 
      puts "false"
  end
  
  def question?
    if self.end_with?("?")
      puts "true"
    else 
      puts "false"
  end

  def exclamation?
    if self.end_with?("!")
      puts "true"
    else 
      puts "false"
  end

  def count_sentences
    count = 0
    if self.includes?(".")
      count +=1
    elsif self.includes?("!")
      count +=1
    elsif self.includes?("?")
      count+=1
    end
    return count
    binding.pry
  end
end