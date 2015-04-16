class CharCounter

  def self.count(key)
    dic = Hash.new()
    key.each_char{|char| dic[char]= key.count(char) }
    dic
  end

end