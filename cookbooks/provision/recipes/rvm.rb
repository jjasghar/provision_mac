#
#
# rvm install
#
#



bash "install and setup rvm" do
  cwd "/Users/#{node['current_user']}"
  creates "/Users/#{node['current_user']}/.rvm/"
  code <<-EOH
  STATUS=0
  curl -sSL https://get.rvm.io | bash -s stable" || STATUS=1
  source ~/.bash_profile" || STATUS=1
  rvm install 1.9.2 || STATUS=1
  rvm install 2.0.0 || STATUS=1
  rvm install 2.1.0 || STATUS=1
  rvm --default 2.0.0 || STATUS=1
  exit $STATUS
  EOH
end

