class OlarGenerator
  def self.olar(content)
    ''.tap do |s|
      content = content.gsub(' ', '.')
      content.split('.').each do |word|
        s << "." << add_r(word)
      end
    end
  end

  def self.add_r(word)
    return word += 'r' if word =~ /\w+(a|e|o|i)\z/
    return word
  end
end
