module FormObjectModel
  class FormObjectHaveValueMatcher < Struct.new(:value)
    attr_reader :actual

    def matches?(actual)
      @actual = actual
      actual.has_value?(value)
    end

    def failure_message
      "Expected field '#{actual.locator}' to have value '#{value}' but had '#{actual.value}'"
    end

    def failure_message_when_negated
      "Expected field '#{actual.locator}' not to have value '#{value}' but did"
    end
  end
end

