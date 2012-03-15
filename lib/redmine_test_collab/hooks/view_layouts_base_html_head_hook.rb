module RedmineTestCollab
  module Hooks
    class ViewLayouts_BaseHtmlHeadHook < Redmine::Hook::ViewListener
      render_on(:view_layouts_base_html_head, :partial => 'test_collab/test_collab_js', :layout => false)
    end
  end
end
