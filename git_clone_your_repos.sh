#!/bin/sh
# 'gem install json' if the script fails to do what it's supposed to do.

echo "Enter Github Username=$name"
read name
curl -s https://api.github.com/users/$name/repos?per_page=100 | ruby -rjson -e 'JSON.load(STDIN.read).each {|repo| %x[git clone #{repo["clone_url"]} ]}'

