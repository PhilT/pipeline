require 'rspec/core/rake_task'
require 'yard'

YARD::Rake::YardocTask.new

desc 'Test, build and install the gem'
task :default => [:spec, :install]

RSpec::Core::RakeTask.new do |t|
  t.pattern = './spec/**/*_spec.rb'
end

desc 'Build and install the gem'
task :install do
  gemspec_path = Dir['*.gemspec'].first
  spec = eval(File.read(gemspec_path))

  result = `gem build #{gemspec_path} 2>&1`
  if result =~ /Successfully built/
    system "gem uninstall -x #{spec.name} 2>&1"
    system "gem install #{spec.file_name} --no-rdoc --no-ri 2>&1"
  else
    raise result
  end
end

desc 'Take the version in the gemspec, create a git tag and send the gem to rubygems'
task :release do
  gemspec_path = Dir['*.gemspec'].first
  spec = eval(File.read(gemspec_path))

  system "git tag -f -a v#{spec.version} -m 'Version #{spec.version}'"
  system "git push --tags"
  system "gem push #{spec.file_name}"
end

