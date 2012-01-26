require 'irb/completion'
require 'what_methods'
require 'pp'
require 'bundler/setup'
IRB.conf[:AUTO_INDENT]=true

# Project-specific .irbrc
if Dir.pwd != File.expand_path("~")
	local_irbrc = File.expand_path '.irbrc'
	if File.exist? local_irbrc
		puts "Loading #{local_irbrc}"
		load local_irbrc
	end
end
