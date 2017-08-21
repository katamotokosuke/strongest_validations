require 'strongest_validations/version'
require 'strongest_validations/string_date_validator'


require 'active_support'
#i18n
ActiveSupport.on_load(:i18n) do 
	I18n.load_path << File.expand_path("strongest_validations/locales/en.yml", __dir__)
end