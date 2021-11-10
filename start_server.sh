echo "Helper script written by Sudip Ghimire <sudipghimire533@gmail.com>"

cd ~
export GIT_REPO_DIRECTORY=$PRIMORDIAL_ROOT

echo "starting proxy server. Have a look at /tmo/netlify-cms-proxy-serve.log for any report..."
netlify-cms-proxy-server > /tmp/netlify-cms-proxy-server.log 2>&1  &

echo "Going to primordial root directory...."
cd $PRIMORDIAL_ROOT
zola serve


echo "Server exit.."
echo "Commit to server only when no error was reported by above program"
