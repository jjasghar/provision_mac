#
#
# main provision recipe
#
#

execute "brew install homebrew/versions/mysql55 --llvm-gcc"

execute "brew services restart mysql55"
