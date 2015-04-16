class CharCounter

  def self.count(key)
    dic = Hash.new
    if !key.nil?
      keys= key.delete(" ")
      keys.each_char{|char| dic[char]= key.count(char) }
    end
    dic
  end

end