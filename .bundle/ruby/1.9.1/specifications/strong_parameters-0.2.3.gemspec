# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "strong_parameters"
  s.version = "0.2.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["David Heinemeier Hansson"]
  s.date = "2014-01-20"
  s.email = ["david@heinemeierhansson.com"]
  s.homepage = "https://github.com/rails/strong_parameters"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "Permitted and required parameters for Action Pack"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, ["~> 3.0"])
      s.add_runtime_dependency(%q<actionpack>, ["~> 3.0"])
      s.add_runtime_dependency(%q<activemodel>, ["~> 3.0"])
      s.add_runtime_dependency(%q<railties>, ["~> 3.0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<activesupport>, ["~> 3.0"])
      s.add_dependency(%q<actionpack>, ["~> 3.0"])
      s.add_dependency(%q<activemodel>, ["~> 3.0"])
      s.add_dependency(%q<railties>, ["~> 3.0"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<activesupport>, ["~> 3.0"])
    s.add_dependency(%q<actionpack>, ["~> 3.0"])
    s.add_dependency(%q<activemodel>, ["~> 3.0"])
    s.add_dependency(%q<railties>, ["~> 3.0"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
