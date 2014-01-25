#
#
# iterm installation
#
#

remote_file "/Users/#{node['current_user']}/Downloads/iterm2.zip" do
  owner "#{node['current_user']}"
  group "staff"
  mode "0644"
  source "http://www.iterm2.com/downloads/stable/iTerm2_v1_0_0.zip"
end

bash "unzip and copy iTerm2" do
  user "#{node['current_user']}"
  cwd "/Users/#{node['current_user']}/Downloads/"
  creates "/Applications/iTerm.app"
  code <<-EOH
  STATUS=0
  unzip iTerm2_v1_0_0.zip || STATUS=1
  mv iTerm.app /Applications/ || STATUS=1
  exit $STATUS
  EOH
end


