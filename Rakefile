require "bundler/gem_tasks"

require 'rake/extensiontask'
Rake::ExtensionTask.new do |ext|
  ext.name    = 'slp'
  ext.ext_dir = 'ext/slp'
  ext.lib_dir = 'lib/slp'
end

require "rspec/core/rake_task"
RSpec::Core::RakeTask.new(:spec => :compile)

task :default => :spec
