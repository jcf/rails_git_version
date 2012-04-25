#!/usr/bin/env rake
require 'bundler/setup'

Dir['tasks/**/*.rake'].each &method(:load)

desc 'Run RSpec & Cucumber'
task :default => [:spec, :features]

Bundler::GemHelper.install_tasks
