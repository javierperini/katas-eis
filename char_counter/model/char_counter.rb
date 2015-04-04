class CharCounter
  def self.count(key)
    dic = Hash.new()
    keys= key.delete(" ")
    keys.each_char{|char| dic[char]= key.count(char) }
    dic
  end

end