# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pomodoro/gui/version'

Gem::Specification.new do |spec|
  spec.name          = "pomodoro-gui"
  spec.version       = Pomodoro::Gui::VERSION
  spec.authors       = ["Ivan Gonzalez"]
  spec.email         = ["xixon.sound@gmail.com"]

  spec.summary       = %q{Pomodoro tool made in Ruby.}
  spec.description   = %q{Just a simple pomodoro with graphical interface made in Ruby.}
  spec.homepage      = "https://github.com/dreamingechoes/pomodoro-gui"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables << 'pomodoro-gui'
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "gosu", ">= 0.9.0"
end
