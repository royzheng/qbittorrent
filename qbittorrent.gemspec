require_relative 'lib/qbittorrent/version'

Gem::Specification.new do |spec|
  spec.name          = 'qbittorrent'
  spec.version       = QBittorrent::VERSION
  spec.authors       = ['Roy Zheng']
  spec.email         = ['github@roy.cc']

  spec.summary       = 'QBittorrent WEB API Client.'
  spec.description   = 'QBittorrent WEB API Client.only support qBittorrent v4.1+.'
  spec.homepage      = 'https://github.com/royzheng/qbittorrent'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/royzheng/qbittorrent'
  spec.metadata['changelog_uri'] = 'https://github.com/royzheng/qbittorrent'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'http', '~> 4.4.1'
  spec.add_dependency 'logger', '~> 1.4'
end
