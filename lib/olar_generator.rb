class OlarGenerator
  def self.olar(content)
    ''.tap do |s|
      content.split(' ').each do |word|
        s << add_point(add_r(word))
      end
    end
  end

  def self.add_r(word)
    word =~ /\w+(a|e|o|i)\z/ ? "#{word}r" : word
  end

  def self.add_point(word)
    word << '.'
  end

end
