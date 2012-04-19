module HelpHelper

  # Given a relative path within the user guide, display the topic
  def user_guide_topic_url(topic)
    locale = 'en-US'
    # "https://docs.redhat.com/docs/#{locale}/OpenShift_Express/2.0/html/User_Guide/#{topic}" # new docs after removing express
    "http://docs.redhat.com/docs/#{locale}/OpenShift/2.0/html/User_Guide/#{topic}"
  end

  def ssh_key_user_guide_topic_url
    user_guide_topic_url 'sect-User_Guide-Managing_SSH_Keys.html'
  end
  
  def manage_app_cli_user_guide_topic_url
    user_guide_topic_url 'chap-User_Guide-OpenShift_Command_Line_Interface.html'
  end

  def deploy_hook_user_guide_topic_url
    user_guide_topic_url 'sect-User_Guide-Using_the_Jenkins_Embedded_Build_System-The_BuildDeploy_Process_in_OpenShift_Express.html'
  end

  def add_domains_user_guide_topic_url
    user_guide_topic_url 'chap-User_Guide-OpenShift_Command_Line_Interface.html#sect-User_Guide-Working_With_Domains'
  end
  
  def manage_cartridges_user_guide_topic_url
    user_guide_topic_url 'sect-User_Guide-Adding_and_Managing_Database_Instances.html#form-User_Guide-Adding_Database_Back_Ends_to_Your_Applications-Command_Options_for_Controlling_Cartridges'
  end
  
  def git_user_guide_topic_url
    user_guide_topic_url 'sect-User_Guide-OpenShift_Web_Interface-Editing_and_Deploying_Applications.html'
  end

  def get_involved_url
    community_base_url 'get-involved'
  end

  def opensource_community_url
    community_base_url 'open-source'
  end

  def get_involved_developers_url
    community_base_url 'developers/get-involved'
  end

  def developers_url
    community_base_url 'developers'
  end

  def developers_path
    community_base_url 'developers'
  end

  def post_to_forum_url
    community_base_url 'forums/openshift'
  end

  def events_url
    community_base_url 'events/'
  end

  def forums_url
    community_base_url 'forums/'
  end

  def knowledge_base_url
    community_base_url 'kb'
  end

  def faq_url
   community_base_url 'faq'
  end

  def developers_get_started_fast_url
    community_base_url 'developers/get-started'
  end

  def community_search_url
    community_base_url 'search/node'
  end

  def sync_git_with_remote_repo_knowledge_base_url
    community_base_url 'kb/kb-e1006-sync-new-express-git-repo-with-your-own-existing-git-repo'
  end

  def rails_quickstart_guide_url
    community_base_url 'kb/kb-e1005-ruby-on-rails-express-quickstart-guide'
  end

  def jboss_resources_url
    community_base_url 'page/jboss-resources'
  end

  def videos_url
    community_base_url 'videos'
  end

  def mongodb_resources_url
    community_base_url 'page/mongodb-resources'
  end

  def user_guide_url
    user_guide_topic_url 'index.html'
  end

  def getting_started_guide_url
    'https://docs.redhat.com/docs/en-US/OpenShift/2.0/html/Getting_Started_Guide/index.html'
  end

  def git_homepage_url
    "http://git-scm.com/"
  end

  def console_help_links
    [
      {:href => user_guide_url,
       :name => 'OpenShift User Guide'},
      {:href => getting_started_guide_url,
       :name => 'Installing OpenShift client tools on Mac OSX, Linux, and Windows'},
      {:href => rails_quickstart_guide_url,
       :name => 'Ruby on Rails Quickstart Guide'},
      {:href => community_base_url('kb/kb-e1018-how-can-i-add-jboss-modules-to-an-express-app'),
       :name => 'How can I add JBoss modules to an OpenShift App'},
      {:href => sync_git_with_remote_repo_knowledge_base_url,
       :name => 'Sync your OpenShift repo with an existing Git repo'}
    ]
  end

  def console_faq_links
    [
      {:href => community_base_url('faq/how-do-i-start-a-new-forum-discussion'),
       :name => 'How do I start a new Forum discussion?'},
      {:href => community_base_url('faq/how-do-i-install-the-rhc-client-tools-on-windows'), 
       :name => 'How do I install the rhc client tools on Windows?'}
    ]
  end

  def community_path
    community_base_url('')
  end

  def community_url
    community_path
  end

  private
    def community_base_url(path)
      "/community/#{path}"
    end
end
