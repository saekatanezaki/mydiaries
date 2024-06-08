module SimpleCalendarHelper
  def simple_calendar_select(form, method, options = {})
    form.date_select(method, options)
  end
end
