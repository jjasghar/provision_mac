#
#
# main provision recipe
#
#

include_recipe 'homebrew::default'


package 'mysql' do
  action :install
end

execute "mysql.server restart"
