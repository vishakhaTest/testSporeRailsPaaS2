require 'lumberjack'

Lumberjack::Formatter.class_eval do
  def call(severity, timestamp, progname, msg)
    "#{msg.is_a?(String) ? msg : msg.inspect}\n"
  end
end