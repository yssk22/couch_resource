# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{couch_resource}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Yohei Sasaki"]
  s.date = %q{2009-03-23}
  s.email = %q{yssk22@gmail.com}
  s.extra_rdoc_files = ["README.rdoc", "LICENSE"]
  s.files = ["MIT_LICENSE", "lib/couch_resource/base.rb", "lib/couch_resource/callbacks.rb", "lib/couch_resource/connection.rb", "lib/couch_resource/error.rb", "lib/couch_resource/rails/couch_config.rb", "lib/couch_resource/rails/couch_fixture.rb", "lib/couch_resource/rails.rb", "lib/couch_resource/struct.rb", "lib/couch_resource/validations.rb", "lib/couch_resource/view.rb", "lib/couch_resource.rb", "test/test_base.rb", "test/test_callbacks.rb", "test/test_connection.rb", "test/test_struct.rb", "test/test_validations.rb", "README.rdoc", "LICENSE"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/yssk22/couch_resource}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{ActiveRecord style data mapper for CouchDB}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<json>, ["= 1.1.3"])
      s.add_runtime_dependency(%q<activesupport>, ["= 2.2.2"])
    else
      s.add_dependency(%q<json>, ["= 1.1.3"])
      s.add_dependency(%q<activesupport>, ["= 2.2.2"])
    end
  else
    s.add_dependency(%q<json>, ["= 1.1.3"])
    s.add_dependency(%q<activesupport>, ["= 2.2.2"])
  end
end
