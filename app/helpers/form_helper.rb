module FormHelper

	 def error_messages_for(record, field_name)
    return if record.blank? || record.errors[field_name].blank?

    error_messages = record.errors[field_name].collect do |error_message|
      "#{error_message.to_s}"
    end.join(', ')

    raw(content_tag :span, error_messages, class: 'help-inline text-danger')
  end
  
end