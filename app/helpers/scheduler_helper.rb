module SchedulerHelper


  def week_day_options
    7.times.map do |d|
      [
        l(Date.today.beginning_of_week + d, :format => "%A"),
        d
      ]
    end
  end
end