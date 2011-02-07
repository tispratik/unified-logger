# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{unified-logger}
  s.version = "0.1.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Pratik Khadloya"]
  s.date = %q{2011-02-07}
  s.description = %q{Mainly useful for aggregating the logs of all the rails applications in your organization at one place. All the rails app connect to a restful logger where the logs are stored in the database.}
  s.email = %q{tispratik@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "lib/unified-logger.rb",
    "test/helper.rb",
    "test/test_unified-logger.rb",
    "unified-logger.gemspec"
  ]
  s.homepage = %q{http://github.com/tispratik/unified-logger}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{unified-logger is used for sending the logs generated by Rails.logger to a restful logging service which logs them in the database.}
  s.test_files = [
    "test/helper.rb",
    "test/test_unified-logger.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
      s.add_runtime_dependency(%q<rest-client>, ["~> 1.6.1"])
      s.add_development_dependency(%q<rails>, ["~> 3.0.3"])
    else
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_dependency(%q<rcov>, [">= 0"])
      s.add_dependency(%q<rest-client>, ["~> 1.6.1"])
      s.add_dependency(%q<rails>, ["~> 3.0.3"])
    end
  else
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
    s.add_dependency(%q<rcov>, [">= 0"])
    s.add_dependency(%q<rest-client>, ["~> 1.6.1"])
    s.add_dependency(%q<rails>, ["~> 3.0.3"])
  end
end

