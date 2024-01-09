#!/bin/sh

set -e

cd "$(dirname "$0")"

git_version=$(git --version) || {
    echo "Git is not installed on this system."
    echo "If you installed with a zip file, you will need to download the new zip and install it manually."
}

if [[ $? != 0 ]]; then
    echo "There were errors while updating. Please download the latest version manually."
fi
echo "starting backup your files, characters, etc."
mkdir tmp-back
cp -r "public/Assets" tmp-back
cp -r "public/Backgrounds" tmp-back
cp -r "public/Characters" tmp-back
cp -r "public/Chats" tmp-back
cp -r "public/Context" tmp-back
cp -r "public/Groups" tmp-back
cp -r "public/Group chats" tmp-back
cp -r "public/Instruct" tmp-back
cp -r "public/movingUI" tmp-back
cp -r "public/KoboldAI Settings" tmp-back
cp -r "public/NovelAI Settings" tmp-back
cp -r "public/OpenAI Settings" tmp-back
cp -r "public/QuickReplies" tmp-back
cp -r "public/TextGen Settings" tmp-back
cp -r "public/Themes" tmp-back
cp -r "public/User Avatars" tmp-back
cp -r "public/Worlds" tmp-back
cp -r "public/User" tmp-back
cp -r "public/settings.json" tmp-back
echo "backup done"
echo "downloading repository"
git clone --single-branch --depth 1 https://github.com/sillytavern/sillytavern.git
echo "repository downloaded"
echo "moving and preparing folders"
mv -f -u -R sillytavern/* ./ && rm -r -f sillytavern
echo "importing backup"
cp -r -i -v tmp-back/* public/ && rm -r tmp-back/
echo "backup imported"
echo "starting SillyTavern"
npm install
node server.js
pause
