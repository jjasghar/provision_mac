#
#
# main provision recipe
#
#


package 'mysql' do
  action :install
end

execute "mysql.server restart"
