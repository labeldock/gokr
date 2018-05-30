# Usage in your model:
#   validates :json_attribute, presence: true, json: true

class JsonValidator < ActiveModel::EachValidator

  def initialize(options)
    options.reverse_merge!(:message => :invalid)
    super(options)
  end

  def validate_each(record, attribute, value)
    value = value.strip
    begin
      result = ExecJS.eval "typeof #{value}"
      if result != 'object'
        record.errors[attribute] << (options[:message] || "invalid object format")
      end
    rescue Exception => exception
      record.errors[attribute] << (options[:message] || "invalid object format")
    end
  end
end