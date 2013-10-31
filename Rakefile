$:.unshift File.dirname(__FILE__) + 'lib'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new
task :default => :spec

desc "Run frac_main.rb"
task :bin do
  sh "ruby -Ilib frac_main.rb"
end

desc "Run tests with --format documentation"
task :test do
  sh "rspec -Ilib racional_spec.rb --format documentation"
end

desc "Run tests with format: html"
task :thtml do
  sh "rspec racional_spec.rb --format html"
end


##############

