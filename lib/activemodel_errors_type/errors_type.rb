module ActiveModelErrorsType
  module ErrorsType

    def initialize(base)
      @errors_type = {}
      super(base)
    end

    def generate_message(attribute, type = :invalid, options = {})
      @errors_type[attribute.to_sym] ||= []
      @errors_type[attribute.to_sym] << type
      super(attribute, type, options)
    end

    def clear
      @errors_type.clear
      super
    end

    def with_types
      @errors_type
    end

  end
end
