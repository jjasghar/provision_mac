#
#
# base provision recipe
#
#


%w{ dnsmasq memcached nginx phantomjs tmux sqlite3 unixodbc }.each do |pkg|
  package pkg do
    action :install
  end
end
