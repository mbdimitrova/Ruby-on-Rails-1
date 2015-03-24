class Object
  def blank?
    return !self if [TrueClass, FalseClass].include?(self.class)
    nil? || empty? || length == 0 || whitespace_only?
  end

  def whitespace_only?
    is_a?(String) ? strip.empty? : false
  end

  def present?
    !blank?
  end
end
