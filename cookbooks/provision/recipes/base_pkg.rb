#
#
# base provision recipe
#
#


%w{ dnsmasq memcached nginx phantomjs tmux}.each do |pkg|
  package pkg do
    action :install
  end
end
