require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name     = "couch_resource"
    gem.summary  = "ActiveRecord style data mapper for CouchDB"
    gem.email    = "yssk22@gmail.com"
    gem.homepage = "http://github.com/yssk22/couch_resource"
    gem.authors  = ["Yohei Sasaki"]
    gem.files    = FileList["MIT_LICENSE", "lib/**/*.rb", "test/**/*.rb"]
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = 'couch_resource'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |t|
  t.test_files = FileList["test/test_*.rb"]
  t.verbose = true
end

begin
  require 'rcov/rcovtask'
  Rcov::RcovTask.new do |test|
    test.libs << 'test'
    test.pattern = 'test/test_*.rb'
    test.verbose = true
  end
rescue LoadError
  task :rcov do
    abort "RCov is not available. In order to run rcov, you must: sudo gem install spicycode-rcov"
  end
end

task :default => :test

Rake::RDocTask.new(:sitedoc) do |rdoc|
  rdoc.rdoc_dir    = 'sitedoc'
  rdoc.title       = "CouchResource API Reference"
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('lib/**/*.rb')
  rdoc.template = "jamis"
end

namespace :sitedoc do
  task :update => :sitedoc do
    sh "rsync -avze ssh sitedoc/ www:~/sitedoc/couch_resource"
  end
end
