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

git "/Users/#{node['current_user']}/repo/" do
  repository "git@github.com:PeopleAdmin/portals.git"
  reference "master"
  user "#{node['current_user']}"
  group "staff"
  action :sync
end

bash "run bundle" do
  user "#{node['current_user']}"
  cwd "/Users/#{node['current_user']}/repo/"
  code <<-EOH
  STATUS=0
  bundle || STATUS=1
  exit $STATUS
  EOH
end

