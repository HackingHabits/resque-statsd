module Resque
  module Plugins
    module Statsd
      def after_enqueue_statsd(*args)
        $statsd.increment("#{@queue}.enqueued")
        $statsd.increment("resque.total.enqueued")
      end
      
      def after_perform_statsd(*args)
        $statsd.increment("#{@queue}.finished")
        $statsd.increment("resque.total.finished")
      end
      
      def on_failure_statsd(*args)
        $statsd.increment("#{@queue}.failed")
        $statsd.increment("resque.total.failed")
      end

      def around_perform_statsd(*args)
        $statsd.timing("#{@queue}.processed") do
          yield
        end
      end

      def self.increment_metric(metric)
        # Automatically appends queue name to the parameter
        # before incrementing
        $statsd.increment("#{@queue}.#{metric}")
      end
    end
  end
end


