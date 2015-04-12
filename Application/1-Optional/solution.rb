class Optional
  def initialize(something)
    @target = something
  end

  def method_missing(method_name)
    if @target.is_a? Optional
      return @target.target
    end
    if @target.respond_to? method_name
      m = @target.method method_name
      @target = m.call
    end
    return self
  end

  def value
    return @target
  end

  def to_s
    return self
  end
end
