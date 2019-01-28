#!/usr/bin/env sh

echo "Bundling all zsh plugins"
antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh

echo "Creating zsh bookmarks file"
echo '# This script was autogenerated' > ~/.bookmarks.zsh
while read LINE; do
    name=$(echo "$LINE" | awk '{print $1}')
    path=$(echo "$LINE" | awk '{print $2}' | sed -e 's/~/$HOME/')
    echo "export ${name}=\"${path}\"" >> ~/.bookmarks.zsh
done < ~/.bookmarks

echo "Creating zsh aliases file"
echo '# This script was autogenerated' > ~/.aliases.zsh
while read LINE; do
    name=$(echo "$LINE" | awk '{print $1}')
    command=$(echo "$LINE" | awk '{$1 = ""; print $0}' | sed -e 's/^\s//')
    echo "alias ${name}='${command}'" >> ~/.aliases.zsh
done < ~/.aliases
