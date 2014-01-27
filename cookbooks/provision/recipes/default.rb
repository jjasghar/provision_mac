#
#
# main provision recipe
#
#

include_recipe 'homebrew::default'

include_recipe 'provision::base_pkg'
include_recipe 'provision::mysql'
include_recipe 'provision::redis'
include_recipe 'provision::rvm'
include_recipe 'provision::repo'
include_recipe 'provision::iterm'
include_recipe 'provision::gitx'


