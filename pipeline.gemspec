# Generated by me
require 'base64'

Gem::Specification.new do |s|
  s.name        = 'pipeline'
  s.version     = '0.1.3'
  s.date        = '2011-09-26'
  s.authors     = ["Danilo Sato", 'Phil Thompson']
  s.email       = ['danilo@dtsato.com', Base64.decode64("cGhpbEBlbGVjdHJpY3Zpc2lvbnMuY29t\n")]
  s.homepage    = 'http://github.com/PhilT/pipeline'
  s.platform    = Gem::Platform::RUBY
  s.summary     = 'Run asynchronous processes in a configurable pipeline.'
  s.required_rubygems_version = '>= 1.3.6'
  s.rubyforge_project         = 'pipeline'

  s.add_dependency 'activerecord', '~> 3.0.19'
  s.add_dependency 'delayed_job', '3.0.3'
  s.add_dependency 'delayed_job_active_record'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- spec/*`.split("\n")
  s.require_path  = 'lib'
end

