#
#
# main provision recipe
#
#

directory "/Users/#{node['current_user']}/repo/" do
  owner "#{node['current_user']}"
  group "staff"
  action :create
end

git "/Users/#{node['current_user']}/repo/portals" do
  repository "git@github.com:PeopleAdmin/portals.git"
  reference "master"
  user "#{node['current_user']}"
  group "staff"
  action :sync
end

bash "run bundle" do
  user "#{node['current_user']}"
  cwd "/Users/#{node['current_user']}/repo/portals"
  code <<-EOH
    STATUS=0
    source /Users/#{node['current_user']}/.rvm/scripts/rvm || STATUS=1
    rvm use 2.0.0 --default || STATUS=1
    gem install bundler || STATUS=1
    bundle || STATUS=1
    exit $STATUS
  EOH
end

