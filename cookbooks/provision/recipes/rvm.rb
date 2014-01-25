#
#
# rvm install
#
#

execute "install rvm" do
  command "curl -sSL https://get.rvm.io | bash -s stable --ignore-dotfiles"
  cwd "/Users/#{node['current_user']}"
  creates "/Users/#{node['current_user']}/.rvm/"
end

bash "setup rvm requirements" do
  cwd "/Users/#{node['current_user']}"
  creates "/Users/#{node['current_user']}/.rvm/ive_installed_bitch_requirements"
  code <<-EOH
    STATUS=0
    source "/Users/#{node['current_user']}/.rvm/scripts/rvm"
    rvm requirements|| STATUS=1
    touch /Users/#{node['current_user']}/.rvm/ive_installed_bitch_requirements
    exit $STATUS
  EOH
end

bash "setup rvm 1.9.3" do
  cwd "/Users/#{node['current_user']}"
  creates "/Users/#{node['current_user']}/.rvm/ive_installed_bitch_193"
  code <<-EOH
    STATUS=0
    source "/Users/#{node['current_user']}/.rvm/scripts/rvm"
    rvm install 1.9.3 || STATUS=1
    rvm --default 1.9.3 || STATUS=1
    touch /Users/#{node['current_user']}/.rvm/ive_installed_bitch_193
    exit $STATUS
  EOH
end

bash "setup rvm 2.0.0" do
  cwd "/Users/#{node['current_user']}"
  creates "/Users/#{node['current_user']}/.rvm/ive_installed_bitch_200"
  code <<-EOH
    STATUS=0
    source "/Users/#{node['current_user']}/.rvm/scripts/rvm"
    rvm install 2.0.0 || STATUS=1
    touch /Users/#{node['current_user']}/.rvm/ive_installed_bitch_200
    exit $STATUS
  EOH
end

bash "setup rvm 2.1.0" do
  cwd "/Users/#{node['current_user']}"
  creates "/Users/#{node['current_user']}/.rvm/ive_installed_bitch_210"
  code <<-EOH
    STATUS=0
    source "/Users/#{node['current_user']}/.rvm/scripts/rvm"
    rvm install 2.1.0 || STATUS=1
    touch /Users/#{node['current_user']}/.rvm/ive_installed_bitch_210
    exit $STATUS
  EOH
end

