require 'time'

module RangeLogger
  class LogsParser
    attr_reader :from, :to, :file

    TIME_REGEXP = /\[\d{4}\-\d{2}\-\w{3}\d{2}:\d{2}:\d{2}\.\d{6}\s#\d+\]/

    def initialize(options={})
      @file = File.open(options[:file])
      @from = options[:from]
      @to   = options[:to] || Time.now
    end

    def run!
      puts "Start date should be before end date" and return if from > to

      logs = matched_logs

      if logs.any?
        file_name = "#{format_date(from)}_#{format_date(to)}.log"
        File.write(file_name, logs.join)
        file_size = "#{(File.size(file_name)/(1024.0 * 1024.0)).round(3)} MB"

        puts "New log file #{file_name} with size #{file_size} has been successfully created"
      else
        puts "There are no mathes, try another date range"
      end
    end

    def matched_logs
      [].tap do |logs|
        file.each_line do |line|
          next unless timestamp = line.match(TIME_REGEXP)

          current_time = Time.parse(timestamp[0])
          if current_time <= to
            logs << line if current_time >= from
          else
            break
          end
        end
      end
    end

    def format_date(date)
      date.strftime("%Y_%m_%d_%H-%M-%S")
    end
  end
end