require 'test_helper'

class StringDateValidatorTest < ActiveSupport::TestCase

	test "validate_each method execute normal" do
		@instance = DateInput.new({date: "2000-01-01"})
		assert(@instance.valid?)
	end

	test "validate_each method execute abnormality" do
    @instance = DateInput.new({date: "dummy"})
    assert(@instance.invalid?)
  end
end
