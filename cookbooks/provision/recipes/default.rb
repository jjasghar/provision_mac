#
#
# main provision recipe
#
#

include_recipe 'homebrew::default'

include_recipe 'provision::base_pkg'
include_recipe 'provision::mysql'
include_recipe 'provision::rvm'


