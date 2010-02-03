# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{autotest-fsevent}
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Sven Schwyn"]
  s.date = %q{2010-02-03}
  s.description = %q{Autotest relies on filesystem polling to detect modifications in source code files. This is expensive for the CPU, harddrive and battery - and unnecesary on Mac OS X 10.5 or higher which comes with the very efficient FSEvent core service for this very purpose. This gem teaches autotest how to use FSEvent.}
  s.email = %q{ruby@bitcetera.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    "CHANGELOG.txt",
     "fsevent/darwin/fsevent_sleep",
     "lib/autotest/fsevent.rb"
  ]
  s.homepage = %q{http://www.bitcetera.com/products/autotest-fsevent}
  s.post_install_message = %q{
[1;32mIn order to use autotest-fsevent, the following line has to be added to
your ~/.autotest file:

require 'autotest/fsevent'

For more information, feedback and bug submissions, please visit:

http://www.bitcetera.com/products/autotest-fsevent

If you like this gem, please consider to recommend me on Working with
Rails, thank you!

http://workingwithrails.com/recommendation/new/person/11706-sven-schwyn

+-------------------------------------------------------------------------+
| READ THIS IF YOU ARE UPGRADING FROM 0.1.X                               |
| As of 0.2.0 this gem no longer depends on the rather heavy ZenTest gem  |
| but the more lightweight autotest gem. You MUST uninstall ZenTest now!  |
| Please refer to the README in case you need more ZenTest functionality. |
+-------------------------------------------------------------------------+
[0m
}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Use FSEvent (on Mac OS X 10.5 or higher) instead of filesystem polling.}
  s.test_files = [
    "spec/autotest-fsevent_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 1.3.0"])
      s.add_runtime_dependency(%q<autotest>, [">= 4.2.4"])
    else
      s.add_dependency(%q<rspec>, [">= 1.3.0"])
      s.add_dependency(%q<autotest>, [">= 4.2.4"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 1.3.0"])
    s.add_dependency(%q<autotest>, [">= 4.2.4"])
  end
end

