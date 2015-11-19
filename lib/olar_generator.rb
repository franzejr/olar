class OlarGenerator
  def self.olar(content)
    ''.tap do |s|
      content.split(' ').each do |word|
        s << add_point(add_r(add_mais(word)))
      end
    end
  end

  def self.add_r(word)
    word =~ /\w+(a|e|o)\z/ ? "#{word}r" : word
  end

  def self.add_point(word)
    word =~ /\w+(\!|\?|\.|\,)\z/ ? word : "#{word}."
  end

  def self.add_mais(word)
    word =~ /mas/ ? 'mais' : word
  end

end
