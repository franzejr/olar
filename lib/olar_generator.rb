class OlarGenerator

  def initialize(phrase)
    @phrase = phrase
    @stack =  {}
  end

  def result
    olar = transform_into_olar_array
    rebuild_phrase olar
  end

  def apply_r
    @stack[__method__] = Proc.new do |word|
        word =~ /\w+(a|e|o)\z/ ? "#{word}r" : word
    end
    self
  end

  def apply_mais
    @stack[__method__] = Proc.new do |word|
        word =~ /M|mas/ ? 'mais' : word
    end
    self
  end

  private

  def transform_into_olar_array
    @phrase.split(' ').map do |word|
      applied_rule = word
      @stack.each do |method_name, proc_method|
        applied_rule = proc_method.call(applied_rule)
      end
      applied_rule
    end
  end

  def rebuild_phrase(words)
    words.map { |word|
        word =~ /\w+(\!|\?|\.|\,)\z/ ? word : "#{word}."
    }.join('').chomp '.'
  end

end
