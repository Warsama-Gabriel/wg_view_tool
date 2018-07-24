
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "wg_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "wg_view_tool"
  spec.version       = WgViewTool::VERSION
  spec.authors       = ["Warsama Gabriel"]
  spec.email         = ["srobleh@gmail.com"]

  spec.summary       = %q{Implementing view methods as tools for applications I will be using.}
  spec.description   = %q{Gem generates HTML data for use by Rails apps.}
  spec.homepage      = "https://github.com/Warsama-Gabriel/wg_view_tool"
  spec.license       = "MIT"


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
