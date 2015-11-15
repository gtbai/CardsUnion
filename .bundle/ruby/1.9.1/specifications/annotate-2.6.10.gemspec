# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "annotate"
  s.version = "2.6.10"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Alex Chaffee", "Cuong Tran", "Marcos Piccinini", "Turadg Aleahmad", "Jon Frisby"]
  s.date = "2015-05-22"
  s.description = "Annotates Rails/ActiveRecord Models, routes, fixtures, and others based on the database schema."
  s.email = ["alex@stinky.com", "cuong.tran@gmail.com", "x@nofxx.com", "turadg@aleahmad.net", "jon@cloudability.com"]
  s.executables = ["annotate"]
  s.extra_rdoc_files = ["README.rdoc", "CHANGELOG.rdoc", "TODO.rdoc"]
  s.files = ["bin/annotate", "README.rdoc", "CHANGELOG.rdoc", "TODO.rdoc"]
  s.homepage = "http://github.com/ctran/annotate_models"
  s.licenses = ["Ruby"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")
  s.rubyforge_project = "annotate"
  s.rubygems_version = "1.8.24"
  s.summary = "Annotates Rails Models, routes, fixtures, and others based on the database schema."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rake>, ["~> 10.4"])
      s.add_runtime_dependency(%q<activerecord>, ["<= 4.3", ">= 3.2"])
    else
      s.add_dependency(%q<rake>, ["~> 10.4"])
      s.add_dependency(%q<activerecord>, ["<= 4.3", ">= 3.2"])
    end
  else
    s.add_dependency(%q<rake>, ["~> 10.4"])
    s.add_dependency(%q<activerecord>, ["<= 4.3", ">= 3.2"])
  end
end
