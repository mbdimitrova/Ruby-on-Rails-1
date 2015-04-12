class Module
  def delegate(*methods, to:)
    methods.each do |method_name|
      self.class_eval do
        define_method method_name do |*args|
          return self.instance_variable_get(to).send(method_name)
        end
      end
    end
  end
end
