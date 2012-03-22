module RedmineTestCollab
  class Hooks < Redmine::Hook::ViewListener
    def view_layouts_base_html_head(context = { })
      context[:controller].send(:render_to_string, {
        :partial => 'test_collab/test_collab_js',
        :locals => context
      })
    end
  end
end
