#
#
# main provision recipe
#
#

package 'redis' do
  action :install
end

bash "setup redis" do
  user "#{node['current_user']}"
  cwd "/Users/#{node['current_user']}"
  creates "~/Library/LaunchAgents/homebrew.mxcl.redis.plist"
  code <<-EOH
  STATUS=0
  mkdir -p ~/Library/LaunchAgents || STATUS=1
  cp /usr/local/Cellar/redis/2.8.11/homebrew.mxcl.redis.plist ~/Library/LaunchAgents || STATUS=1
  launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.redis.plist || STATUS=1
  exit $STATUS
  EOH
end

execute "redis-server /usr/local/etc/redis.conf &"
