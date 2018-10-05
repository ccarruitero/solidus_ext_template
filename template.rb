source_paths.unshift(File.expand_path('../templates', __FILE__))

# directory 'app', "#{name}/app"
directory 'lib'
# directory 'bin', "#{name}/bin"
# directory 'config', "#{name}/config"

template '%name%.gemspec'
template 'Gemfile' # , "#{name}/Gemfile"
template 'gitignore', '.gitignore'
template 'LICENSE'
template 'Rakefile'
template 'README.md'
template 'rspec', '.rspec'
template 'spec/spec_helper.rb'
template 'rubocop.yml', '.rubocop.yml'
template 'travis.yml', '.travis.yml'
template 'rvmrc', '.rvmrc'

after_bundle do
  git :init
  git add: '.'
  git commit: "-a -m 'Initial commit'"
end

def source_paths
  [__dir__]
end
