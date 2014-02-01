#
#
# main provision recipe
#
#

execute "brew install homebrew/versions/mysql55 --llvm-gcc"

bash "set up mysql55 lauch agent" do
  user "#{node['current_user']}"
  cwd "/User/#{node['current_user']}"
  creates "/User/#{node['current_user']}/Library/LaunchAgents/homebrew.mxcl.mysql55.plist"
  code <<-EOH
  STATUS=0
  mkdir -p ~/Library/LaunchAgents/   || STATUS=1
  cp /usr/local/Cellar/mysql55/5.5.30/homebrew.mxcl.mysql55.plist ~/Library/LaunchAgents   || STATUS=1
  launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.mysql55.plist   || STATUS=1
  exit $STATUS
  EOH
end

execute "brew services restart mysql55"
