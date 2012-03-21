require File.dirname(__FILE__) + '/../test_helper'

class WelcomeControllerTest < ActionController::TestCase
  def setup
    @request = ActionController::TestRequest.new
    @response = ActionController::TestResponse.new
  end

  def test_with_not_yet_configured_plugin
    Setting['plugin_redmine_test_collab'] = { }
    get :index
    assert !@response.body.include?('<!-- HELLO -->')
  end

  def test_with_enabled_plugin
    Setting['plugin_redmine_test_collab'] = { :enabled => 'true' }
    get :index
    assert @response.body.include?('<!-- HELLO -->')
  end

  def test_with_disabled_plugin
    Setting['plugin_redmine_test_collab'] = { :enabled => 'false' }
    get :index
    assert !@response.body.include?('<!-- HELLO -->')
  end
end
