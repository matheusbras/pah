in_root do
  run "bundle exec rails generate simple_form:install"
end

git add: 'config'
git add: 'lib/templates'
git_commit 'Run `rails generate simple_form:install`'

copy_static_file 'config/locales/simple_form.pt-BR.yml'
git add: 'config'
git_commit 'Add simple_form pt-BR locale.'
