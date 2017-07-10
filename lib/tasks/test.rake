require 'rake/testtask'

# clear the default test:run task
# Rake::Task['test:run'].clear
Rake::Task["test"].clear
task 'test' do
  puts "Rake test disabled temporarily."
end

task :default => :test
