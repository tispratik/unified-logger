require 'rest_client'

class UnifiedLogger < ActiveSupport::BufferedLogger

  attr_accessor :log_server
  attr_accessor :log_server_port

  def initialize(log = "log/#{Rails.env}.log", level = DEBUG, client_id = 0)
    super(log, level)
    @client_id = client_id
  end

  def send_msg(severity, message = nil, progname = nil, &block)

    return if message.nil?
    return if @level > severity

    message = (message || (block && block.call) || progname).to_s

    case severity
    when 0
      severity_str = "debug"
    when 1
     severity_str = "info"
    when 2
     severity_str = "warn"
    when 3
     severity_str = "error"
    when 4
     severity_str = "fatal"
    else
     severity_str = "unknown"
    end

    message.chomp!
    message.lstrip!
    message.rstrip!

    log_hash = { :client_id => @client_id, :log_message => message, :log_level => severity_str, :log_time => Time.now }
    loger_hash = { :loger => log_hash }

    RestClient.post("http://#{log_server}:#{log_server_port}/logers.json", loger_hash.to_json, :content_type => :json)
  end

end

for severity in ActiveSupport::BufferedLogger::Severity.constants
  eval <<-EOT
    class UnifiedLogger < ActiveSupport::BufferedLogger
      def #{severity.downcase}(message = nil, progname = nil, &block)           # def debug(message = nil, progname = nil, &block)
        send_msg(#{severity}, message, progname, &block)                        #   send_msg(DEBUG, message, progname, &block)
      end                                                                       # end
    end
  EOT
end