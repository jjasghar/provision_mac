#
#
# base provision recipe
#
#


%w{ dnsmasq memcached nginx phantomjs redis tmux}.each do |pkg|
  package pkg do
    action :install
  end
end
