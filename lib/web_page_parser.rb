require 'open-uri'

class WebPageParser
  def initialize(url)
    @document = Hpricot(open(url))
  end

  def parse
    parse_table_with_schedule(@document.search("//table").last)
    transform_schedules
    order_schedules
    return schedules
  end

  protected
    def parse_table_with_schedule(table)
      (table/"td").each do |row|
        schedule = row.inner_html.gsub("&nbsp;", "").gsub("<br />", "")
        schedules << schedule unless schedule.blank?
      end
    end

    def transform_schedules
      schedules.collect! { |schedule| Time.parse(schedule) }
    end

    def order_schedules
      schedules.sort! { |a, b| a <=> b }
    end

    def schedules
      @schedules ||= Array.new
    end
end

