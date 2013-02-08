class ApplicationController < ActionController::Base
  protect_from_forgery

  ActionView::Base.field_error_proc = Proc.new do |html, instance|
    if html =~ /label/
      %(<div class="error">#{html}</div>).html_safe
    else
      %(<div class="error">#{html}<p class="help-block">#{instance.error_message.first}</p></div>).html_safe
    end
  end
end
