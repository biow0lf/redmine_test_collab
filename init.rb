require 'redmine'

Redmine::Plugin.register :redmine_test_collab do
  name 'Redmine Test Collab plugin'
  author 'Igor Zubkov'
  description 'Redmine Test Collab plugin'
  version '0.0.1'
  url 'https://github.com/biow0lf/redmine_test_collab'
  author_url 'https://github.com/biow0lf'

  settings(:default => {
             'enabled' => 'false'
           }, :partial => 'settings/test_collab')
end

require 'redmine_test_collab/hooks/view_layouts_base_html_head_hook'
