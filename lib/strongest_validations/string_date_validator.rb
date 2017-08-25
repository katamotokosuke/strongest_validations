module ActiveModel
  module Validations
    class StringDateValidator < ActiveModel::EachValidator

      def validate_each(record, attr_name, value)
        record.errors.add(attr_name, :string_date, options) if !str_date_valid?(value)
      end

      private
      def str_date_valid?(str_date)
        return begin
          str_date.in_time_zone
          true
        rescue
          false
        end
      end

    end

    module HelperMethods
      def validates_string_date(*attr_names)
        validates_with StringDateValidator, _merge_attributes(attr_names)
      end
    end
  end
end
