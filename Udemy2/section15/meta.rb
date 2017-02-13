class Football
end

# p Football.new.kick

class Football
  def kick
    "GOAL"
  end
end

p Football.new.kick

class Football
  def kick
    "MISSED"
  end
end

p Football.new.kick


#second example

class String
  def censor(bad_word)
    self.gsub! "#{bad_word}", "****"
  end

  def nr_of_ch
    size
  end
end

p "The bunny was in trouble with king's bunny.".censor("bunny")

p "The bunny was in trouble with king's bunny.".size
p "The bunny was in trouble with king's bunny.".nr_of_ch


