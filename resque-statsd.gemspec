Gem::Specification.new do |s|
 s.name        = 'resque-statsd'
 s.version     = '0.0.2'
 s.homepage    = 'https://github.com/HackingHabits/resque-statsd'
 s.license     = 'MIT'
 s.summary     = 'Adds simple counters and timers for statsd into your Resque jobs'
 s.description = "Will add a counter for enqueuing, performing, failing and timing Jobs"
 s.email       = "madan.thangavelu@mylookout.com"
 s.authors     = ["Madan Thangavelu"]
 s.files       = ["lib/resque-statsd.rb", "lib/resque/plugins/statsd.rb"]
end

