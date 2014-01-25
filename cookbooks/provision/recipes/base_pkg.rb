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

dmg_package 'Google Chrome' do
  dmg_name 'googlechrome'
  source   'https://dl.google.com/chrome/mac/stable/CHFA/googlechrome.dmg'
  action   :install
end


