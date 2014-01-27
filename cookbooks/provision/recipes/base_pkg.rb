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

dmg_package 'Sublime Text' do
  dmg_name 'Sublime Text Build 3059'
  source   'http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20Build%203059.dmg'
  action   :install
end


