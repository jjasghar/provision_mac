#
#
# main provision recipe
#
#

package 'homebrew/versions/mysql55' do
  action :install
  options("--llvm-gcc")
end

execute "brew services restart mysql55"
