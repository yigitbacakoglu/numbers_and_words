# frozen_string_literal: true

class Float

  def positive?
    self > 0
  end

  def to_words(options = {})
    NumbersAndWords::Wrappers::Float.new(self).to_words options
  end
end
