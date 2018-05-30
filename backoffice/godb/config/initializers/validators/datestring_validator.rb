# Usage in your model:
#   validates :json_attribute, presence: true, datestring: true

class DatestringValidator < ActiveModel::EachValidator

  #def initialize(options)
  #  options.reverse_merge!(:message => :invalid)
  #  super(options)
  #end

  def validate_each(record, attribute, value)
    unless value =~ /^\d+(s|m|h|D|M|Y)$/
      record.errors[attribute] << (options[:message] || 'is invalid date string format.')
    end
  end
end