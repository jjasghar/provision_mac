#
#
# main provision recipe
#
#

package 'mysql55' do
  action :install
  options("--llvm-gcc")
end

execute "brew services restart mysql55"
