# Update LLS source
[ ! -d "lua-language-server" ] &&  git clone --recurse-submodules -j8 https://github.com/LuaLS/lua-language-server.git
cd lua-language-server || exit
git pull

# Build LLS
./make.sh

# Update love-api
git submodule update --remote 3rd/love-api

# Build 3rd meta
./bin/lua-language-server ./tools/build-3rd-meta.lua

# Copy 3rd meta to addon
cd .. || exit
rm -r library
cp -r lua-language-server/meta/3rd/love2d/library/ library

# Commit changes
git add library
git commit -m "Updated meta files"
git push