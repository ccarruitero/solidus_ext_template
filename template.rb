source_paths.unshift(File.expand_path('../templates', __FILE__))

directory 'app'
directory 'lib'
directory 'config'

template '%name%.gemspec'
template 'Gemfile'
template 'gitignore', '.gitignore'
template 'LICENSE'
template 'Rakefile'
template 'README.md'
template 'rspec', '.rspec'
template 'spec/spec_helper.rb'
template 'rubocop.yml', '.rubocop.yml'
template 'travis.yml', '.travis.yml'
template 'rvmrc', '.rvmrc'

# after_bundle do
#   git :init
#   git add: '.'
#   git commit: "-m 'Initial commit'"
# end

def source_paths
  [__dir__]
end
