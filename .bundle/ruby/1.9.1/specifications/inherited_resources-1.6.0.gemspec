# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "inherited_resources"
  s.version = "1.6.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jos\u{e9} Valim", "Rafael Mendon\u{e7}a Fran\u{e7}a"]
  s.date = "2015-01-21"
  s.description = "Inherited Resources speeds up development by making your controllers inherit all restful actions so you just have to focus on what is important."
  s.homepage = "http://github.com/josevalim/inherited_resources"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "inherited_resources"
  s.rubygems_version = "1.8.24"
  s.summary = "Inherited Resources speeds up development by making your controllers inherit all restful actions so you just have to focus on what is important."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<responders>, [">= 0"])
      s.add_runtime_dependency(%q<actionpack>, ["< 5", ">= 3.2"])
      s.add_runtime_dependency(%q<railties>, ["< 5", ">= 3.2"])
      s.add_runtime_dependency(%q<has_scope>, ["~> 0.6.0.rc"])
    else
      s.add_dependency(%q<responders>, [">= 0"])
      s.add_dependency(%q<actionpack>, ["< 5", ">= 3.2"])
      s.add_dependency(%q<railties>, ["< 5", ">= 3.2"])
      s.add_dependency(%q<has_scope>, ["~> 0.6.0.rc"])
    end
  else
    s.add_dependency(%q<responders>, [">= 0"])
    s.add_dependency(%q<actionpack>, ["< 5", ">= 3.2"])
    s.add_dependency(%q<railties>, ["< 5", ">= 3.2"])
    s.add_dependency(%q<has_scope>, ["~> 0.6.0.rc"])
  end
end
