#
#
# iterm installation
#
#

remote_file "/Users/#{node['current_user']}/Downloads/GitXStable.zip" do
  owner "#{node['current_user']}"
  group "staff"
  mode "0644"
  source "http://frim.frim.nl/GitXStable.app.zip"
end

bash "unzip and copy gitx" do
  user "#{node['current_user']}"
  cwd "/Users/#{node['current_user']}/Downloads/"
  creates "/Applications/GitX.app"
  code <<-EOH
  STATUS=0
  unzip GitXStable.zip || STATUS=1
  mv GitX.app /Applications/ || STATUS=1
  exit $STATUS
  EOH
end


